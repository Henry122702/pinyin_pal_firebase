import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class LessonCard extends StatefulWidget {
  final String lessonName;
  final String lessonWordCount;
  final String lessonExampleHanzi;
  final String lessonExamplePinyin;
  final VoidCallback quizOnclick;

  const LessonCard(
      {Key? key,
      required this.lessonName,
      required this.lessonWordCount,
      required this.lessonExampleHanzi,
      required this.lessonExamplePinyin,
      required this.quizOnclick})
      : super(key: key);

  @override
  State<LessonCard> createState() => _LessonCardState();
}

class _LessonCardState extends State<LessonCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.quizOnclick,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0, 0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.lessonName,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: GlobalColors.textPrimaryWhiteColor),
                  ),
                  Text(
                    widget.lessonWordCount,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: GlobalColors.textPrimaryWhiteColor),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Contoh Kata: ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: GlobalColors.textPrimaryWhiteColor),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.lessonExampleHanzi,
                        style: TextStyle(
                            fontSize: 18,
                            color: GlobalColors.textPrimaryWhiteColor),
                      ),
                      Text(
                        widget.lessonExamplePinyin,
                        style: TextStyle(
                            fontSize: 18,
                            color: GlobalColors.textPrimaryWhiteColor),
                      ),
                    ],
                  )
                ],
              ),
              Row()
            ],
          ),
        ),
      ),
    );
  }
}
