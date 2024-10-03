import 'package:cloud_firestore/cloud_firestore.dart';

class ChatService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Send message to chat room
  Future<void> sendMessage(String roomId, String message, String userId) async {
    await _firestore.collection('chatrooms/$roomId/messages').add({
      'text': message,
      'senderId': userId,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  // Get chat messages
  Stream<QuerySnapshot> getMessages(String roomId) {
    return _firestore.collection('chatrooms/$roomId/messages')
        .orderBy('timestamp', descending: true)
        .snapshots();
  }
}
