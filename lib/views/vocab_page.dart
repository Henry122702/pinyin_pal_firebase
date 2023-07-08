// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:pinyin_pal/components/vocabulary_card.dart';
import 'package:pinyin_pal/constants/colors.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_activities.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_numbers.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_objects.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_people.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_place.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_time.dart';

class VocabPage extends StatefulWidget {
  const VocabPage({super.key});

  @override
  State<VocabPage> createState() => _VocabPageState();
}

class _VocabPageState extends State<VocabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Daftar Kosakata",
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
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NumbersVocabTable()),
                    );
                  });
                },
                child: VocabCard(
                    vocabTitle: "Angka",
                    vocabWordCount: "10 Kata",
                    vocabHanzi: " 一, 二, 三 ",
                    vocabPinyin: "yī  èr  sān"),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ObjectsVocabTable()),
                    );
                  });
                },
                child: VocabCard(
                    vocabTitle: "Benda",
                    vocabWordCount: "10 Kata",
                    vocabHanzi: "茶, 米饭, 电视 ",
                    vocabPinyin: "chá mǐfàn diànshì "),
              ),
              GestureDetector(
                onTap: (() {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PeopleVocabTable()),
                    );
                  });
                }),
                child: VocabCard(
                    vocabTitle: "Orang",
                    vocabWordCount: "10 Kata",
                    vocabHanzi: " 我, 你, 朋友 ",
                    vocabPinyin: "wǒ nǐ péngyou "),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TimeVocabTable()),
                    );
                  });
                },
                child: VocabCard(
                    vocabTitle: "Waktu",
                    vocabWordCount: "10 Kata",
                    vocabHanzi: "日, 今天, 明天",
                    vocabPinyin: "rì jīntiān míngtiān "),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PlaceVocabTable()),
                    );
                  });
                },
                child: VocabCard(
                    vocabTitle: "Tempat",
                    vocabWordCount: "5 Kata",
                    vocabHanzi: "家, 学校, 饭店 ",
                    vocabPinyin: "jiā, xuéxiào, fàndiàn "),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ActivitiesVocabTable()),
                    );
                  });
                },
                child: VocabCard(
                    vocabTitle: "Aktivitas",
                    vocabWordCount: "5 Kata",
                    vocabHanzi: " 吃, 喝, 睡觉 ",
                    vocabPinyin: "chī, hē, shuìjiào "),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
