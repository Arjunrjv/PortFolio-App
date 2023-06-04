import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileRepository {
  final _firestore = FirebaseFirestore.instance;

  Future<Map<String, dynamic>?> getProfile(String userID) async {
    final snapshot = await _firestore.collection('users').doc(userID).get();
    return snapshot.data();
  }
}
