// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class FlashcardFooter extends StatefulWidget {
  const FlashcardFooter({super.key});

  @override
  State<FlashcardFooter> createState() => _FlashcardFooterState();
}

class _FlashcardFooterState extends State<FlashcardFooter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            color: GlobalColors.primaryBlackColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Icon(
                Icons.record_voice_over_outlined,
                color: GlobalColors.textPrimaryWhiteColor,
                size: 30,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: GlobalColors.secondaryBlackColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Icon(
                Icons.mic_sharp,
                color: GlobalColors.textPrimaryWhiteColor,
                size: 30,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: GlobalColors.primaryBlackColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Icon(
                Icons.star_outline,
                color: GlobalColors.textPrimaryWhiteColor,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
