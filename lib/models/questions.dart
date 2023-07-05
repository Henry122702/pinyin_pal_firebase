class Question {
  final int sequence;
  final String docid;
  final String question;
  final String answer;
  final String indonesian;
  final bool isStarred;

  Question(
      {required this.sequence,
      required this.docid,
      required this.question,
      required this.answer,
      required this.indonesian,
      required this.isStarred});

  Map<String, dynamic> toMap() {
    return {
      'sequence': sequence,
      'docid': docid,
      'question': question,
      'answer': answer,
      'indonesian': indonesian,
      'isStarred': isStarred
    };
  }

  Question.fromMap(Map<String, dynamic> questionMap)
      : sequence = questionMap['sequence'],
        docid = questionMap['docid'],
        question = questionMap['question'],
        answer = questionMap['answer'],
        indonesian = questionMap['indonesian'],
        isStarred = questionMap['isStarred'];
}
