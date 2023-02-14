// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinyin_pal/constants/colors.dart';

class VocabTablePeople extends StatelessWidget {
  const VocabTablePeople({super.key});

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
          padding: const EdgeInsets.fromLTRB(0, 30, 10, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Kosakata Orang",
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
                          DataCell(Text('我')),
                          DataCell(Text('wǒ')),
                          DataCell(Text('Saya')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('你')),
                          DataCell(Text('nǐ')),
                          DataCell(Text('Kamu')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('爸爸')),
                          DataCell(Text('bàba')),
                          DataCell(Text('Ayah')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('妈妈')),
                          DataCell(Text('māma')),
                          DataCell(Text('Ibu')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('儿子')),
                          DataCell(Text('érzi')),
                          DataCell(Text('Anak Laki-Laki')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('女儿')),
                          DataCell(Text('nǚér')),
                          DataCell(Text('Anak Perempuan')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('老师')),
                          DataCell(Text('lǎoshī')),
                          DataCell(Text('Guru')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('学生')),
                          DataCell(Text('xuéshēng')),
                          DataCell(Text('Murid')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('同学')),
                          DataCell(Text('tóngxué')),
                          DataCell(Text('Teman Sekolah')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('朋友')),
                          DataCell(Text('péngyou')),
                          DataCell(Text('Teman')),
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
