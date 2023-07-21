// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class VocabTableObjects extends StatelessWidget {
  const VocabTableObjects({super.key});

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
                "Benda",
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
                          DataCell(Text('米饭')),
                          DataCell(Text('mǐfàn')),
                          DataCell(Text('Nasi')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('菜')),
                          DataCell(Text('cài')),
                          DataCell(Text('Sayur')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('苹果')),
                          DataCell(Text('píngguǒ')),
                          DataCell(Text('Apel')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('茶')),
                          DataCell(Text('chá')),
                          DataCell(Text('Teh')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('杯子')),
                          DataCell(Text('bēizi')),
                          DataCell(Text('Cangkir')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('飞机')),
                          DataCell(Text('fēijī')),
                          DataCell(Text('Pesawat')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('电视')),
                          DataCell(Text('diànshì')),
                          DataCell(Text('Televisi')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('电脑')),
                          DataCell(Text('diànnǎo')),
                          DataCell(Text('Komputer')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('钱')),
                          DataCell(Text('qián')),
                          DataCell(Text('Uang')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('书')),
                          DataCell(Text('shū')),
                          DataCell(Text('Buku')),
                        ],
                      ),
                      //Recently Added
                      DataRow(
                        cells: [
                          DataCell(Text('汉语')),
                          DataCell(Text('hànyǔ')),
                          DataCell(Text('Bahasa Mandarin')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('字')),
                          DataCell(Text('zì')),
                          DataCell(Text('Huruf')),
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
