// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class VocabTableNumbers extends StatelessWidget {
  const VocabTableNumbers({super.key});

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
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Angka",
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
                          DataCell(Text('一')),
                          DataCell(Text('yī')),
                          DataCell(Text('Satu')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('二')),
                          DataCell(Text('èr')),
                          DataCell(Text('Dua')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('三')),
                          DataCell(Text('sān')),
                          DataCell(Text('Tiga')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('四')),
                          DataCell(Text('sì')),
                          DataCell(Text('Empat')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('五')),
                          DataCell(Text('wǔ')),
                          DataCell(Text('Lima')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('六')),
                          DataCell(Text('liù')),
                          DataCell(Text('Enam')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('七')),
                          DataCell(Text('qī')),
                          DataCell(Text('Tujuh')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('八')),
                          DataCell(Text('bā')),
                          DataCell(Text('Delapan')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('九')),
                          DataCell(Text('jiǔ')),
                          DataCell(Text('Sembilan')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('十')),
                          DataCell(Text('shí')),
                          DataCell(Text('Sepuluh')),
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
