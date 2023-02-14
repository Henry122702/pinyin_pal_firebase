// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class VocabTableTime extends StatelessWidget {
  const VocabTableTime({super.key});

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
                "Kosakata Waktu",
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
                          DataCell(Text('今天')),
                          DataCell(Text('jīntiān')),
                          DataCell(Text('Hari ini')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('明天')),
                          DataCell(Text('míngtiān')),
                          DataCell(Text('Besok')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('昨天')),
                          DataCell(Text('zuótiān')),
                          DataCell(Text('Kemarin')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('上午')),
                          DataCell(Text('shàngwǔ')),
                          DataCell(Text('Pagi')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('中午')),
                          DataCell(Text('zhōngwǔ')),
                          DataCell(Text('Siang')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('下午')),
                          DataCell(Text('xiàwǔ')),
                          DataCell(Text('Sore')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('日')),
                          DataCell(Text('rì')),
                          DataCell(Text('Hari')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('星期')),
                          DataCell(Text('xīngqī')),
                          DataCell(Text('Minggu')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('月')),
                          DataCell(Text('yuè')),
                          DataCell(Text('Bulan')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('年')),
                          DataCell(Text('nián')),
                          DataCell(Text('Tahun')),
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
