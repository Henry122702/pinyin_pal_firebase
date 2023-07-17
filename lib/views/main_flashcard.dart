// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:avatar_glow/avatar_glow.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
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
  // Load Quiz Data Setup
  int _moduleIndex = 0;
  bool _dataLoaded = false;
  final List<Question> _questionData = [];

// Text-To-Speech
  final FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  speak(String word) async {
    await flutterTts.setLanguage("zh-CN");
    await flutterTts.setPitch(1);
    await flutterTts.speak(word);
  }

//Speech-To-Text
  String text = "";
  bool isListening = false;

  Widget _buildQuestionWidget(BuildContext context) {
    Question question = _questionData[_moduleIndex];
    int questionCount = _questionData.length;

    Future<void> toggleSpeaking() async {
      setState(() {
        isSpeaking = true;
      });
      await speak(question.question);
      Future.delayed(const Duration(milliseconds: 1500), () {
        setState(() {
          isSpeaking = false;
        });
      });
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Latihan Membaca",
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
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            question.sequence.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                                color: Colors.black),
                          ),
                          Text(
                            "/$questionCount",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 60,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                question.question,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 72,
                                ),
                              ),
                              Text(
                                question.answer,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (_moduleIndex == 0) {
                                          Navigator.of(context).pop();
                                        } else if (_moduleIndex - 1 >
                                            _questionData.length - 1) {
                                          Navigator.of(context).pop();
                                        } else {
                                          text = "";
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
                                      fontSize: 20,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (_moduleIndex + 1 >
                                              _questionData.length - 1) {
                                            Navigator.of(context).pop();
                                          } else {
                                            text = "";
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
                                height: 40,
                              ),
                              Text(
                                "Jawaban kamu :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    text,
                                    style: text == question.question
                                        ? TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 54,
                                          )
                                        : TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 54,
                                          ),
                                  ),
                                  Text(
                                    PinyinHelper.getPinyin(text,
                                        format: PinyinFormat.WITH_TONE_MARK),
                                    style: text == question.question
                                        ? TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green,
                                          )
                                        : TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
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
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: GlobalColors.secondaryBlackColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        toggleSpeaking();
                      },
                      child: AvatarGlow(
                        animate: isSpeaking,
                        endRadius: 60,
                        duration: Duration(milliseconds: 2000),
                        repeat: false,
                        glowColor: Colors.white,
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
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: GlobalColors.secondaryBlackColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: GestureDetector(
                      onTap: toggleRecording,
                      child: AvatarGlow(
                        animate: isListening,
                        endRadius: 60,
                        glowColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Icon(
                            isListening ? Icons.mic_sharp : Icons.mic_none,
                            color: GlobalColors.textPrimaryWhiteColor,
                            size: 30,
                          ),
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
