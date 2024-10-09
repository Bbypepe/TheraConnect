import 'package:cloud_firestore/cloud_firestore.dart';

class GiftingSystem {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> sendGift(String hostId, String userId, String giftType) async {
    await _firestore.collection('gifts').add({
      'hostId': hostId,
      'userId': userId,
      'giftType': giftType,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> getGifts(String hostId) {
    return _firestore.collection('gifts')
        .where('hostId', isEqualTo: hostId)
        .snapshots();
  }
}
