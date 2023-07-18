// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class VocabTableCounters extends StatelessWidget {
  const VocabTableCounters({super.key});

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
                "Kosakata Perhitungan",
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
                          DataCell(Text('个')),
                          DataCell(Text('gè')),
                          DataCell(Text('Sebuah')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('岁')),
                          DataCell(Text('suì')),
                          DataCell(Text('Tahun(Umur)')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('本')),
                          DataCell(Text('běn')),
                          DataCell(Text('Buku(Unit buku)')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('些')),
                          DataCell(Text('xiē')),
                          DataCell(Text('Beberapa')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('块')),
                          DataCell(Text('kuài')),
                          DataCell(Text('Keping')),
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
