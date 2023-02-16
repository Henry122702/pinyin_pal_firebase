// ignore_for_file: prefer_const_declarations

class Flashcard {
  String id;
  final String hanzi;
  final String pinyin;
  final String indonesia;
  final String topic;
  final bool isStarred;

  Flashcard({
    this.id = '',
    required this.hanzi,
    required this.pinyin,
    required this.indonesia,
    required this.topic,
    required this.isStarred,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'hanzi': hanzi,
        'pinyin': pinyin,
        'indonesia': indonesia,
        'topic': topic,
        'isStarred': isStarred
      };

  static Flashcard fromJson(Map<String, dynamic> json) => Flashcard(
      id: json['id'],
      hanzi: json['hanzi'],
      pinyin: json['pinyin'],
      indonesia: json['indonesia'],
      topic: json['topic'],
      isStarred: json['isStarred']);
}
