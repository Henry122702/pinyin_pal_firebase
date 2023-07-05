// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lpinyin/lpinyin.dart';
import 'package:pinyin_pal/components/lesson_flashcard/lesson_flashcard.dart';
import 'package:pinyin_pal/components/lesson_flashcard/lesson_flashcard_footer.dart';
import 'package:pinyin_pal/constants/colors.dart';
import 'package:pinyin_pal/models/questions.dart';
import 'package:pinyin_pal/speech_api.dart';
import 'package:pinyin_pal/models/modules.dart';
import 'package:pinyin_pal/db/database.dart';

class MainFlashcardPage extends StatefulWidget {
  @override
  State<MainFlashcardPage> createState() => _MainFlashcardPageState();
}

class _MainFlashcardPageState extends State<MainFlashcardPage> {
  int _moduleIndex = 0;
  bool _dataLoaded = false;
  final List<Question> _questionData = [];

  String text = "";
  bool isListening = false;

  Widget _buildQuestionWidget(BuildContext context) {
    Question question = _questionData[_moduleIndex];
    int questionCount = _questionData.length;

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
                              text: question.sequence.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            TextSpan(
                              text: "/$questionCount",
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
                                question.question,
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
                                    onPressed: () {
                                      setState(() {
                                        if (_moduleIndex + 1 >
                                            _questionData.length - 1) {
                                          Navigator.of(context).pop();
                                        } else {
                                          _moduleIndex -= 1;
                                        }
                                      });
                                    },
                                    icon: Icon(
                                      Icons.arrow_left,
                                      size: 50,
                                    ),
                                  ),
                                  Text(
                                    question.indonesian,
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (_moduleIndex + 1 >
                                              _questionData.length - 1) {
                                            Navigator.of(context).pop();
                                          } else {
                                            _moduleIndex += 1;
                                          }
                                        });
                                      },
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
                              Row(
                                children: [
                                  Text(text),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    PinyinHelper.getPinyin(text,
                                        format: PinyinFormat.WITH_TONE_MARK),
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
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

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> routeData =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return _dataLoaded
        ? _buildQuestionWidget(context)
        : StreamBuilder(
            stream:
                PinyinPalDatabase.getQuestionsByModuleId(routeData['moduleId']),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Error');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              _dataLoaded = true;
              for (var document in snapshot.data!.docs) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                _questionData.add(Question.fromMap(data));
              }
              print(_questionData);
              return _buildQuestionWidget(context);
            });
  }

  Future toggleRecording() => SpeechApi.toggleRecording(
      onResult: (text) => setState(() => this.text = text),
      onListening: (isListening) {
        setState(() {
          this.isListening = isListening;
        });
      });
}
