// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/components/lesson_flashcard/lesson_flashcard.dart';
import 'package:pinyin_pal/components/lesson_flashcard/lesson_flashcard_footer.dart';
import 'package:pinyin_pal/constants/colors.dart';

class MainFlashcardPage extends StatefulWidget {
  const MainFlashcardPage({super.key});

  @override
  State<MainFlashcardPage> createState() => _MainFlashcardPageState();
}

class _MainFlashcardPageState extends State<MainFlashcardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Kosakata Angka",
          style: TextStyle(
              color: GlobalColors.textPrimaryWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
        backgroundColor: GlobalColors.secondaryBlackColor,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              LessonFlashcard(),
              SizedBox(
                height: 50,
              ),
              FlashcardFooter(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}