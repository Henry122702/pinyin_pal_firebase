import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:pinyin_pal/model/card.dart';

class CardsDatabase {
  static final CardsDatabase instance = CardsDatabase._init();

  static Database? _database;

  CardsDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('cards.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final boolType = 'BOOLEAN NOT NULL';
    final textType = 'TEXT NOT NULL';

    await db.execute('''
CREATE TABLE $tableCards (
  ${CardFields.id} $idType,
  ${CardFields.isStarred} $boolType,
  ${CardFields.topic} $textType,
  ${CardFields.hanzi} $textType,
  ${CardFields.pinyin} $textType,
  ${CardFields.indonesia} $textType,
)
''');
  }

  Future<Card> create(Card card) async {
    final db = await instance.database;

    final id = await db.insert(tableCards, card.toJson());
    return card.copy(id: id);
  }

  Future<Card> readCard(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableCards,
      columns: CardFields.values,
      where: '${CardFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Card.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<Card>> readAllCards() async {
    final db = await instance.database;

    final result = await db.query(tableCards);

    return result.map((jjson) => Card.fromJson(jjson)).toList();
  }

  Future<List<Card>> readTopicCards(String topic) async {
    final db = await instance.database;

    final result = await db.query(tableCards,
        columns: CardFields.values,
        where: '${CardFields.topic} = ?',
        whereArgs: [topic]);

    return result.map((jjson) => Card.fromJson(jjson)).toList();
  }

  Future<int> update(Card card) async {
    final db = await instance.database;

    return db.update(
      tableCards,
      card.toJson(),
      where: '${CardFields.id} = ?',
      whereArgs: [card.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db
        .delete(tableCards, where: '${CardFields.id} = ?', whereArgs: [id]);
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
