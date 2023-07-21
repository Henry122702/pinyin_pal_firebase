// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class VocabTableObjects2 extends StatelessWidget {
  const VocabTableObjects2({super.key});

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
                "Benda 2",
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
                          DataCell(Text('衣服')),
                          DataCell(Text('yīfu')),
                          DataCell(Text('Baju')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('水')),
                          DataCell(Text('shuǐ')),
                          DataCell(Text('Air')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('水果')),
                          DataCell(Text('shuǐguǒ')),
                          DataCell(Text('Buah')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('出租车')),
                          DataCell(Text('chūzūchē')),
                          DataCell(Text('Taxi')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('电影')),
                          DataCell(Text('diànyǐng')),
                          DataCell(Text('Film')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('天气')),
                          DataCell(Text('tiānqì')),
                          DataCell(Text('Cuaca')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('猫')),
                          DataCell(Text('māo')),
                          DataCell(Text('Kucing')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('狗')),
                          DataCell(Text('gǒu')),
                          DataCell(Text('Anjing')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('东西')),
                          DataCell(Text('dōngxi')),
                          DataCell(Text('Benda')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('名字')),
                          DataCell(Text('míngzi')),
                          DataCell(Text('Nama')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('桌子')),
                          DataCell(Text('zhuōzi')),
                          DataCell(Text('Meja')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('椅子')),
                          DataCell(Text('yǐzi')),
                          DataCell(Text('Kursi')),
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
