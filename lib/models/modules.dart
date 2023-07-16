class Module {
  final String title;
  final int count;
  final String lessonHanzi;
  final String lessonPinyin;

  Module(
      {required this.title,
      required this.count,
      required this.lessonHanzi,
      required this.lessonPinyin});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'count': count,
      'lessonHanzi': lessonHanzi,
      'lessonPinyin': lessonPinyin
    };
  }

  Module.fromMap(Map<String, dynamic> moduleMap)
      : title = moduleMap['title'],
        count = moduleMap['count'],
        lessonHanzi = moduleMap['lessonHanzi'],
        lessonPinyin = moduleMap['lessonPinyin'];
}
