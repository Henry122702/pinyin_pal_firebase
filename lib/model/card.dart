// ignore_for_file: prefer_const_declarations

final String tableCards = 'cards';

class CardFields {
  static final List<String> values = [
    id,
    isStarred,
    topic,
    hanzi,
    pinyin,
    indonesia
  ];

  static final String id = '_id';
  static final String isStarred = 'isStarred';
  static final String topic = 'topic';
  static final String hanzi = 'hanzi';
  static final String pinyin = 'pinyin';
  static final String indonesia = 'indonesia';
}

class Card {
  final int? id;
  final bool isStarred;
  final String topic;
  final String hanzi;
  final String pinyin;
  final String indonesia;

  const Card({
    this.id,
    required this.isStarred,
    required this.topic,
    required this.hanzi,
    required this.pinyin,
    required this.indonesia,
  });

  Card copy({
    int? id,
    bool? isStarred,
    String? topic,
    String? hanzi,
    String? pinyin,
    String? indonesia,
  }) =>
      Card(
        id: id ?? this.id,
        isStarred: isStarred ?? this.isStarred,
        topic: topic ?? this.topic,
        hanzi: hanzi ?? this.hanzi,
        pinyin: pinyin ?? this.pinyin,
        indonesia: indonesia ?? this.indonesia,
      );

  static Card fromJson(Map<String, Object?> json) => Card(
      id: json[CardFields.id] as int,
      isStarred: json[CardFields.isStarred] == 1,
      topic: json[CardFields.topic] as String,
      hanzi: json[CardFields.hanzi] as String,
      pinyin: json[CardFields.pinyin] as String,
      indonesia: json[CardFields.indonesia] as String);

  Map<String, Object?> toJson() => {
        CardFields.id: id,
        CardFields.isStarred: isStarred ? 1 : 0,
        CardFields.topic: topic,
        CardFields.hanzi: hanzi,
        CardFields.pinyin: pinyin,
        CardFields.indonesia: indonesia,
      };
}
