import 'package:cloud_firestore/cloud_firestore.dart';

class JobRepository {
  final _firestore = FirebaseFirestore.instance;

  Future<Map<String, dynamic>?> getJob(String jobID) async {
    final snapshot = await _firestore.collection('jobs').doc(jobID).get();
    return snapshot.data();
  }
}
