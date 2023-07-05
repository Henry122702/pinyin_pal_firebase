import 'package:cloud_firestore/cloud_firestore.dart';

class PinyinPalDatabase {
  static Stream<QuerySnapshot> getPinyinPalModules() {
    return FirebaseFirestore.instance
        .collection('modules')
        .orderBy('sequence')
        .snapshots();
  }

  static Stream<QuerySnapshot> getQuestionsByModuleId(String moduleId) {
    return FirebaseFirestore.instance
        .collection('modules/$moduleId/questions')
        .orderBy('sequence')
        .snapshots();
  }
}
