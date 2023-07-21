// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class VocabTableQuestionsAndAdverbs extends StatelessWidget {
  const VocabTableQuestionsAndAdverbs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: GlobalColors.textPrimaryWhiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 15, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Keterangan",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: GlobalColors.primaryBlackColor),
              ),
              Column(
                children: [
                  DataTable(
                    columnSpacing: 40,
                    columns: [
                      DataColumn(
                        label: Text('Mandarin'),
                      ),
                      DataColumn(
                        label: Text('Pinyin'),
                      ),
                      DataColumn(
                        label: Text('Indonesia'),
                      ),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text('哪儿')),
                          DataCell(Text('nǎr')),
                          DataCell(Text('Dimana')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('谁')),
                          DataCell(Text('shuí')),
                          DataCell(Text('Siapa')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('什么')),
                          DataCell(Text('shén me')),
                          DataCell(Text('Apa/Kenapa')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('多少')),
                          DataCell(Text('duōshǎo')),
                          DataCell(Text('Berapa banyak')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('几')),
                          DataCell(Text('jǐ')),
                          DataCell(Text('Beberapa')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('怎么')),
                          DataCell(Text('zěnme')),
                          DataCell(Text('Bagaimana')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('怎么样')),
                          DataCell(Text('zěnmeyàng')),
                          DataCell(Text('Bagaimana dengan itu')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('不')),
                          DataCell(Text('bù')),
                          DataCell(Text('Tidak')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('没')),
                          DataCell(Text('méi')),
                          DataCell(Text('Tidak')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('很')),
                          DataCell(Text('hěn')),
                          DataCell(Text('Sangat')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('太')),
                          DataCell(Text('tài')),
                          DataCell(Text('Terlalu')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('都')),
                          DataCell(Text('dōu')),
                          DataCell(Text('Semua')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('这儿')),
                          DataCell(Text('zhèr')),
                          DataCell(Text('Ini')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('那儿')),
                          DataCell(Text('nàr')),
                          DataCell(Text('Itu')),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
