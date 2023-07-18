// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class VocabTableAdjectives extends StatelessWidget {
  const VocabTableAdjectives({super.key});

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
                "Kosakata Kata Sifat",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: GlobalColors.primaryBlackColor),
              ),
              Column(
                children: [
                  DataTable(
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
                          DataCell(Text('好')),
                          DataCell(Text('hǎo')),
                          DataCell(Text('Bagus')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('大')),
                          DataCell(Text('dà')),
                          DataCell(Text('Besar')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('小')),
                          DataCell(Text('xiǎo')),
                          DataCell(Text('Kecil')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('多')),
                          DataCell(Text('duō')),
                          DataCell(Text('Banyak')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('少')),
                          DataCell(Text('shǎo')),
                          DataCell(Text('Sedikit')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('冷')),
                          DataCell(Text('lěng')),
                          DataCell(Text('Dingin')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('热')),
                          DataCell(Text('rè')),
                          DataCell(Text('Panas')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('高兴')),
                          DataCell(Text('gāoxìng')),
                          DataCell(Text('Senang')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('漂亮')),
                          DataCell(Text('piàoliàng')),
                          DataCell(Text('Indah')),
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
