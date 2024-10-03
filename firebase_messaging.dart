import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  void initialize() {
    // استقبال الإشعارات أثناء فتح التطبيق
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Received a message: ${message.notification?.title}');
    });

    // التعامل مع الإشعارات عند فتح التطبيق عبر الإشعار
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Notification clicked: ${message.notification?.title}');
    });
  }

  Future<void> sendNotification(String token, String title, String body) async {
    // من هنا يمكنك استخدام الخادم أو خدمة خارجية لإرسال إشعارات.
  }
}

