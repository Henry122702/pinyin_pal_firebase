// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class VocabTablePlaces extends StatelessWidget {
  const VocabTablePlaces({super.key});

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
                "Kosakata Tempat",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: GlobalColors.primaryBlackColor),
              ),
              Column(
                children: [
                  DataTable(
                    columnSpacing: 15,
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
                          DataCell(Text('家')),
                          DataCell(Text('jiā')),
                          DataCell(Text('Rumah')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('学校')),
                          DataCell(Text('xuéxiào')),
                          DataCell(Text('Sekolah')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('饭店')),
                          DataCell(Text('fàndiàn')),
                          DataCell(Text('Restoran')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('商店')),
                          DataCell(Text('shāngdiàn')),
                          DataCell(Text('Toko')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('医院')),
                          DataCell(Text('yīyuàn')),
                          DataCell(Text('Rumah Sakit')),
                        ],
                      ),
                      //Recently Added
                      DataRow(
                        cells: [
                          DataCell(Text('火车站')),
                          DataCell(Text('huǒchēzhàn')),
                          DataCell(Text('Stasiun Kereta')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('中国')),
                          DataCell(Text('zhōng guó')),
                          DataCell(Text('China')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('北京')),
                          DataCell(Text('běijīng')),
                          DataCell(Text('Beijing')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('上')),
                          DataCell(Text('shàng')),
                          DataCell(Text('Atas')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('下')),
                          DataCell(Text('xià')),
                          DataCell(Text('Bawah')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('前面')),
                          DataCell(Text('qiánmiàn')),
                          DataCell(Text('Depan')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('后面')),
                          DataCell(Text('hòumiàn')),
                          DataCell(Text('Belakang')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('里')),
                          DataCell(Text('lǐmiàn')),
                          DataCell(Text('Dalam (Di Dalam)')),
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
