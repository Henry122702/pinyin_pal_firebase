// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lpinyin/lpinyin.dart';
import 'package:pinyin_pal/components/lesson_flashcard/lesson_flashcard.dart';
import 'package:pinyin_pal/components/lesson_flashcard/lesson_flashcard_footer.dart';
import 'package:pinyin_pal/constants/colors.dart';
import 'package:pinyin_pal/speech_api.dart';

class MainFlashcardPage extends StatefulWidget {
  const MainFlashcardPage({super.key});

  @override
  State<MainFlashcardPage> createState() => _MainFlashcardPageState();
}

class _MainFlashcardPageState extends State<MainFlashcardPage> {
  List<String> flashcardIDs = [];

  // Future getFlashcardId() async {
  //   await FirebaseFirestore.instance.collection('flashcards').get().then(
  //         (snapshot) => snapshot.docs.forEach(
  //           (flashcard) {
  //             print(flashcard.reference);
  //             flashcardIDs.add(flashcard.reference.id);
  //           },
  //         ),
  //       );
  // }

  // @override
  // void initState() {
  //   getFlashcardId();
  //   super.initState();
  // }

  String text = "";
  bool isListening = false;

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: GlobalColors.textPrimaryWhiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                  child: Column(
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
                                text,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 72,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                PinyinHelper.getPinyin(text,
                                    format: PinyinFormat.WITH_TONE_MARK),
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
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
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
                      onTap: toggleRecording,
                      child: Padding(
                        padding: const EdgeInsets.all(40),
                        child: Icon(
                          isListening ? Icons.mic_sharp : Icons.mic_none,
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
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future toggleRecording() => SpeechApi.toggleRecording(
      onResult: (text) => setState(() => this.text = text),
      onListening: (isListening) {
        setState(() {
          this.isListening = isListening;
        });
      });
}
