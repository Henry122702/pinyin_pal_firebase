// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/components/vocab_table_cards/table_objects.dart';
import 'package:pinyin_pal/components/vocab_table_cards/table_people.dart';
import 'package:pinyin_pal/components/vocab_table_cards/table_places.dart';
import 'package:pinyin_pal/components/vocab_table_cards/table_time.dart';

import 'package:pinyin_pal/constants/colors.dart';

class PlaceVocabTable extends StatefulWidget {
  const PlaceVocabTable({super.key});

  @override
  State<PlaceVocabTable> createState() => _PlaceVocabTableState();
}

class _PlaceVocabTableState extends State<PlaceVocabTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Kosakata",
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
            children: [VocabTablePlaces()],
          ),
        ],
      ),
    );
  }
}
