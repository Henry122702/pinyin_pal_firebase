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

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp firebaseApp = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp(
    firebaseApp: firebaseApp,
  ));
}

class MyApp extends StatelessWidget {
  final FirebaseApp firebaseApp;

  const MyApp({super.key, required this.firebaseApp});

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

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
      routes: {
        '/': (context) => FutureBuilder(
            future: _initializeFirebase(),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return MainNavigationRoot();
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            })),
        '/quiz': (context) => FutureBuilder(
            future: _initializeFirebase(),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return MainFlashcardPage();
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            })),
      },
    );
  }
}
