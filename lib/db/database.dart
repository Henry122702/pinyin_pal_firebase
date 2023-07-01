import 'package:cloud_firestore/cloud_firestore.dart';

class PinyinPalDatabase {
  static Stream<QuerySnapshot> getPinyinPalModules() {
    return FirebaseFirestore.instance
        .collection('modules')
        .orderBy('sequence')
        .snapshots();
  }
}
