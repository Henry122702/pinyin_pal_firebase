// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:pinyin_pal/components/vocabulary_card.dart';
import 'package:pinyin_pal/constants/colors.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_activities.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_counters.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_numbers.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_objects.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_objects_2.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_people.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_place.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_question_and_adverbs%20copy.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_question_and_adverbs.dart';
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
                    vocabWordCount: "12 Kata",
                    vocabHanzi: "茶, 米饭, 电视 ",
                    vocabPinyin: "chá mǐfàn diànshì "),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ObjectsVocabTable2()),
                    );
                  });
                },
                child: VocabCard(
                    vocabTitle: "Benda 2",
                    vocabWordCount: "12 Kata",
                    vocabHanzi: "衣服, 桌子, 椅子 ",
                    vocabPinyin: "yīfu zhuōzi yǐzi "),
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
                    vocabWordCount: "18 Kata",
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
                    vocabWordCount: "14 Kata",
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
                    vocabWordCount: "18 Kata",
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
                    vocabWordCount: "10 Kata",
                    vocabHanzi: " 吃, 喝, 睡觉 ",
                    vocabPinyin: "chī, hē, shuìjiào "),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const QuestionAndAdverbsTable()),
                    );
                  });
                },
                child: VocabCard(
                    vocabTitle: "Pertanyaan dan Keterangan",
                    vocabWordCount: "14 Kata",
                    vocabHanzi: " 哪儿, 谁, 很 ",
                    vocabPinyin: "nǎr, shuí, hěn "),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CountersTable()),
                    );
                  });
                },
                child: VocabCard(
                    vocabTitle: "Unit Hitungan",
                    vocabWordCount: "5 Kata",
                    vocabHanzi: " 个, 岁, 本 ",
                    vocabPinyin: "gè, suì, běn "),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdjectivesTable()),
                    );
                  });
                },
                child: VocabCard(
                    vocabTitle: "Kata Sifat",
                    vocabWordCount: "9 Kata",
                    vocabHanzi: " 好, 大, 小 ",
                    vocabPinyin: "hǎo, dà, xiǎo "),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
