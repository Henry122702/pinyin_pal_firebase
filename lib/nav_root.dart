// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';
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
  final screens = [
    HomePage(),
    VocabPage(),
    AboutApp(),
  ];

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
