// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:pinyin_pal/constants/colors.dart';
import 'package:pinyin_pal/database_functions/get_flashcard_hanzi.dart';

class LessonFlashcard extends StatefulWidget {
  const LessonFlashcard({super.key});

  @override
  State<LessonFlashcard> createState() => _LessonFlashcardState();
}

class _LessonFlashcardState extends State<LessonFlashcard> {
  List<String> flashcardIDs = [];

  Future getFlashcardId() async {
    await FirebaseFirestore.instance
        .collection('flashcards')
        .where('id', isEqualTo: '2')
        .get()
        .then(
          (snapshot) => snapshot.docs.forEach(
            (flashcard) {
              print(flashcard.reference);
              flashcardIDs.add(flashcard.reference.id);
            },
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: GlobalColors.textPrimaryWhiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
        child: FutureBuilder(
            future: getFlashcardId(),
            builder: (context, snapshot) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: "0",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        TextSpan(
                          text: "/10",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 64,
                            ),
                          ),
                          Text(
                            "Yi",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_left,
                                  size: 50,
                                ),
                              ),
                              Text(
                                "satu",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_right,
                                    size: 50,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                            "Jawaban kamu :",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Yo",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 125,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}
