// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/components/vocab_table_cards/table_counters.dart';

import 'package:pinyin_pal/constants/colors.dart';

class CountersTable extends StatefulWidget {
  const CountersTable({super.key});

  @override
  State<CountersTable> createState() => _CountersTableState();
}

class _CountersTableState extends State<CountersTable> {
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
            children: [VocabTableCounters()],
          ),
        ],
      ),
    );
  }
}
