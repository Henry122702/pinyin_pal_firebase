// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';
import 'package:pinyin_pal/db/database.dart';
import 'package:pinyin_pal/views/about_app.dart';
import 'package:pinyin_pal/views/home.dart';
import 'package:pinyin_pal/views/vocab_page.dart';

class MainNavigationRoot extends StatefulWidget {
  const MainNavigationRoot({super.key});

  @override
  State<MainNavigationRoot> createState() => _MainNavigationRootState();
}

class _MainNavigationRootState extends State<MainNavigationRoot> {
  int index = 0;

  bool _dataLoaded = false;

  Map<String, dynamic> modulesData = new Map<String, dynamic>();

  late List<Widget> screens;

  @override
  void initState() {
    screens = [
      _dataLoaded
          ? HomePage(modulesData: modulesData)
          : StreamBuilder(
              stream: PinyinPalDatabase.getPinyinPalModules(),
              builder: ((context1, snapshot1) {
                return StreamBuilder(
                  stream: PinyinPalDatabase.getPinyinPalModules(),
                  builder: ((context2, snapshot2) {
                    if (snapshot1.hasError || snapshot2.hasError) {
                      return Text('Error loading');
                    }

                    if (snapshot1.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    // Modules data

                    for (var document in snapshot1.data!.docs) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;

                      modulesData[data['docid']] = data;
                    }

                    // User data

                    _dataLoaded = true;

                    return HomePage(modulesData: modulesData);
                  }),
                );
              }),
            ),
      VocabPage(),
      AboutApp(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() {
          this.index = index;
        }),
        backgroundColor: GlobalColors.secondaryBlackColor,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
              icon: Icon(Icons.bookmark_outline),
              selectedIcon: Icon(Icons.bookmark),
              label: 'Kosakata'),
          NavigationDestination(
              icon: Icon(Icons.info_outline),
              selectedIcon: Icon(Icons.info),
              label: 'Tentang'),
        ],
      ),
    );
  }
}
