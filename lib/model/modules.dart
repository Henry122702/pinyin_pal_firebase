class Module {
  final String title;
  final int count;
  final String description;
  final String lessonHanzi;
  final String lessonPinyin;

  Module(
      {required this.title,
      required this.count,
      required this.description,
      required this.lessonHanzi,
      required this.lessonPinyin});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'count': count,
      'description': description,
      'lessonHanzi': lessonHanzi,
      'lessonPinyin': lessonPinyin
    };
  }

  Module.fromMap(Map<String, dynamic> moduleMap)
      : title = moduleMap['title'],
        count = moduleMap['count'],
        description = moduleMap['description'],
        lessonHanzi = moduleMap['lessonHanzi'],
        lessonPinyin = moduleMap['lessonPinyin'];
}
