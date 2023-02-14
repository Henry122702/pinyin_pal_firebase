// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/components/lesson_cards/lesson_card.dart';
import 'package:pinyin_pal/components/vocab_table_cards/table_numbers.dart';
import 'package:pinyin_pal/components/vocabulary_card.dart';
import 'package:pinyin_pal/constants/colors.dart';

class NumbersVocabTable extends StatefulWidget {
  const NumbersVocabTable({super.key});

  @override
  State<NumbersVocabTable> createState() => _NumbersVocabTableState();
}

class _NumbersVocabTableState extends State<NumbersVocabTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Kosakata",
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
            children: [VocabTableNumbers()],
          ),
        ],
      ),
    );
  }
}
