// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class VocabTableActivities extends StatelessWidget {
  const VocabTableActivities({super.key});

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
                "Aktivitas",
                style: TextStyle(
                    fontSize: 33,
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
                          DataCell(Text('吃')),
                          DataCell(Text('chī')),
                          DataCell(Text('Makan')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('喝')),
                          DataCell(Text('hē')),
                          DataCell(Text('Minum')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('睡觉')),
                          DataCell(Text('shuìjiào')),
                          DataCell(Text('Tidur')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('坐')),
                          DataCell(Text('zuò')),
                          DataCell(Text('Duduk')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('看见')),
                          DataCell(Text('kànjiàn')),
                          DataCell(Text('Melihat')),
                        ],
                      ),
                      //recently added
                      DataRow(
                        cells: [
                          DataCell(Text('听')),
                          DataCell(Text('tīng')),
                          DataCell(Text('Mendengar')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('说话')),
                          DataCell(Text('shuōhuà')),
                          DataCell(Text('Membicara')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('看')),
                          DataCell(Text('kàn')),
                          DataCell(Text('Nampak')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('读')),
                          DataCell(Text('dú')),
                          DataCell(Text('Membaca')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('写')),
                          DataCell(Text('xiě')),
                          DataCell(Text('Menulis')),
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
