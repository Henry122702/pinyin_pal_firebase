// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:pinyin_pal/constants/colors.dart';

class LessonFlashcard extends StatefulWidget {
  const LessonFlashcard({super.key});

  @override
  State<LessonFlashcard> createState() => _LessonFlashcardState();
}

class _LessonFlashcardState extends State<LessonFlashcard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: "0",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
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
                      "一",
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
                            size: 35,
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
                              size: 35,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Jawaban kamu :",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Yo",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
