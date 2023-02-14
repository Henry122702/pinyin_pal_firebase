// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class ActivatedLessonCard extends StatefulWidget {
  final String lessonName;
  final String lessonWordCount;
  final String lessonDescription;
  final String lessonExampleHanzi;
  final String lessonExamplePinyin;

  const ActivatedLessonCard(
      {Key? key,
      required this.lessonName,
      required this.lessonWordCount,
      required this.lessonDescription,
      required this.lessonExampleHanzi,
      required this.lessonExamplePinyin})
      : super(key: key);

  @override
  State<ActivatedLessonCard> createState() => _ActivatedLessonCardState();
}

class _ActivatedLessonCardState extends State<ActivatedLessonCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
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
                      color: GlobalColors.primaryBlackColor),
                ),
                Text(
                  widget.lessonWordCount,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: GlobalColors.primaryBlackColor),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                    flex: 4,
                    child: Text(
                      widget.lessonDescription,
                      style: TextStyle(fontSize: 18),
                    )),
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: GlobalColors.secondaryBlackColor,
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.all(20),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: GlobalColors.textPrimaryWhiteColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Contoh Kata: ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: GlobalColors.primaryBlackColor),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.lessonExampleHanzi,
                      style: TextStyle(
                          fontSize: 18, color: GlobalColors.primaryBlackColor),
                    ),
                    Text(
                      widget.lessonExamplePinyin,
                      style: TextStyle(
                          fontSize: 18, color: GlobalColors.primaryBlackColor),
                    ),
                  ],
                )
              ],
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
