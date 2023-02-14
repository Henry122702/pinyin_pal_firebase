// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/components/lesson_cards/activated_lesson_card.dart';
import 'package:pinyin_pal/components/lesson_cards/lesson_card.dart';
import 'package:pinyin_pal/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool angkaSelected = false;
  bool bendaSelected = false;
  bool orangSelected = false;
  bool waktuSelected = false;
  bool tempatSelected = false;
  bool aktivitasSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PinyinPal: Pronunciation Trainer",
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
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 1.25),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      angkaSelected = !angkaSelected;
                    });
                  },
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                        color: angkaSelected
                            ? GlobalColors.textPrimaryWhiteColor
                            : GlobalColors.secondaryBlackColor,
                        borderRadius: BorderRadius.circular(15)),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOutCubic,
                    child: angkaSelected
                        ? ActivatedLessonCard(
                            lessonName: "Angka",
                            lessonWordCount: "10 Kata",
                            lessonDescription:
                                "Belajar cara membaca angka dalam Bahasa Mandarin",
                            lessonExampleHanzi: " 一, 二, 三 ",
                            lessonExamplePinyin: " yī  èr  sān ",
                          )
                        : LessonCard(
                            lessonName: "Angka",
                            lessonWordCount: "10 Kata",
                            lessonExampleHanzi: " 一, 二, 三 ",
                            lessonExamplePinyin: " yī  èr  sān ",
                          ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 1.25),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bendaSelected = !bendaSelected;
                    });
                  },
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      color: bendaSelected
                          ? GlobalColors.textPrimaryWhiteColor
                          : GlobalColors.secondaryBlackColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOutCubic,
                    child: bendaSelected
                        ? ActivatedLessonCard(
                            lessonName: "Benda",
                            lessonWordCount: "10 Kata",
                            lessonDescription:
                                "Belajar cara membaca benda dalam Bahasa Mandarin",
                            lessonExampleHanzi: "  茶,    米饭,    电视 ",
                            lessonExamplePinyin: "chá  mǐfàn  diànshì ",
                          )
                        : LessonCard(
                            lessonName: "Benda",
                            lessonWordCount: "10 Kata",
                            lessonExampleHanzi: "  茶,    米饭,    电视 ",
                            lessonExamplePinyin: "chá  mǐfàn  diànshì ",
                          ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 1.25),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      orangSelected = !orangSelected;
                    });
                  },
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      color: orangSelected
                          ? GlobalColors.textPrimaryWhiteColor
                          : GlobalColors.secondaryBlackColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOutCubic,
                    child: orangSelected
                        ? ActivatedLessonCard(
                            lessonName: "Orang",
                            lessonWordCount: "10 Kata",
                            lessonDescription:
                                "Belajar cara membaca kata orang-orang dalam Bahasa Mandarin",
                            lessonExampleHanzi: "  我,   你,   朋友 ",
                            lessonExamplePinyin: " wǒ  nǐ  péngyou ",
                          )
                        : LessonCard(
                            lessonName: "Orang",
                            lessonWordCount: "10 Kata",
                            lessonExampleHanzi: "  我,   你,   朋友 ",
                            lessonExamplePinyin: " wǒ  nǐ  péngyou ",
                          ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 1.25),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      waktuSelected = !waktuSelected;
                    });
                  },
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      color: waktuSelected
                          ? GlobalColors.textPrimaryWhiteColor
                          : GlobalColors.secondaryBlackColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOutCubic,
                    child: waktuSelected
                        ? ActivatedLessonCard(
                            lessonName: "Waktu",
                            lessonWordCount: "10 Kata",
                            lessonDescription:
                                "Belajar cara membaca kata waktu dalam Bahasa Mandarin",
                            lessonExampleHanzi: " 日,   今天,      明天",
                            lessonExamplePinyin: " rì   jīntiān  míngtiān ",
                          )
                        : LessonCard(
                            lessonName: "Waktu",
                            lessonWordCount: "10 Kata",
                            lessonExampleHanzi: " 日,   今天,      明天",
                            lessonExamplePinyin: " rì   jīntiān  míngtiān ",
                          ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 1.25),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      tempatSelected = !tempatSelected;
                    });
                  },
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      color: tempatSelected
                          ? GlobalColors.textPrimaryWhiteColor
                          : GlobalColors.secondaryBlackColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOutCubic,
                    child: tempatSelected
                        ? ActivatedLessonCard(
                            lessonName: "Tempat",
                            lessonWordCount: "5 Kata",
                            lessonDescription:
                                "Belajar cara membaca kata tempat dalam Bahasa Mandarin",
                            lessonExampleHanzi: "  家,   学校,        饭店 ",
                            lessonExamplePinyin: " jiā, xuéxiào, fàndiàn ",
                          )
                        : LessonCard(
                            lessonName: "Tempat",
                            lessonWordCount: "5 Kata",
                            lessonExampleHanzi: "  家,   学校,        饭店 ",
                            lessonExamplePinyin: " jiā, xuéxiào, fàndiàn ",
                          ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 1.25),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      aktivitasSelected = !aktivitasSelected;
                    });
                  },
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      color: aktivitasSelected
                          ? GlobalColors.textPrimaryWhiteColor
                          : GlobalColors.secondaryBlackColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOutCubic,
                    child: aktivitasSelected
                        ? ActivatedLessonCard(
                            lessonName: "Aktivitas",
                            lessonWordCount: "5 Kata",
                            lessonDescription:
                                "Belajar cara membaca kata aktivitas dalam Bahasa Mandarin",
                            lessonExampleHanzi: " 吃,   喝,   睡觉 ",
                            lessonExamplePinyin: "chī, hē, shuìjiào ",
                          )
                        : LessonCard(
                            lessonName: "Aktivitas",
                            lessonWordCount: "5 Kata",
                            lessonExampleHanzi: " 吃,   喝,   睡觉 ",
                            lessonExamplePinyin: "chī, hē, shuìjiào ",
                          ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
