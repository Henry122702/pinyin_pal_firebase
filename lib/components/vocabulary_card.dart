// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class VocabCard extends StatefulWidget {
  final String vocabTitle;
  final String vocabWordCount;
  final String vocabHanzi;
  final String vocabPinyin;

  const VocabCard(
      {Key? key,
      required this.vocabTitle,
      required this.vocabWordCount,
      required this.vocabHanzi,
      required this.vocabPinyin})
      : super(key: key);

  @override
  State<VocabCard> createState() => _VocabCardState();
}

class _VocabCardState extends State<VocabCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0),
      child: Container(
        decoration: BoxDecoration(
            color: GlobalColors.textPrimaryWhiteColor,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.vocabTitle,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: GlobalColors.primaryBlackColor),
                  ),
                  Text(
                    widget.vocabWordCount,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: GlobalColors.primaryBlackColor),
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
                        color: GlobalColors.primaryBlackColor),
                  ),
                  Column(
                    children: [
                      Text(
                        widget.vocabHanzi,
                        style: TextStyle(
                            fontSize: 18,
                            color: GlobalColors.primaryBlackColor),
                      ),
                      Text(
                        widget.vocabPinyin,
                        style: TextStyle(
                            fontSize: 18,
                            color: GlobalColors.primaryBlackColor),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
