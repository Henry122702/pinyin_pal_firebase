import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pinyin_pal/components/lesson_flashcard/lesson_flashcard.dart';
import 'package:pinyin_pal/nav_root.dart';
import 'package:pinyin_pal/views/about_app.dart';
import 'package:pinyin_pal/constants/colors.dart';
import 'package:pinyin_pal/views/home.dart';
import 'package:pinyin_pal/views/main_flashcard.dart';
import 'package:pinyin_pal/views/vocab_page.dart';
import 'package:pinyin_pal/views/vocab_table_view/vocab_numbers.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: GlobalColors.primaryBlackColor,
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: GlobalColors.secondaryBlackColor,
          iconTheme: MaterialStateProperty.all(
              IconThemeData(color: GlobalColors.textPrimaryWhiteColor)),
          indicatorColor: GlobalColors.textPrimaryWhiteColor.withOpacity(0.2),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, color: GlobalColors.textPrimaryWhiteColor),
          ),
        ),
      ),
      home: const MainNavigationRoot(),
    );
  }
}
