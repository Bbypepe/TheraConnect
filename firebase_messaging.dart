import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  void initialize() {
    // Handle messages received while the app is in the foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Received a message: ${message.notification?.title}');
    });

    // Handle notification taps when the app is opened from a notification
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Notification clicked: ${message.notification?.title}');
    });
  }

  Future<void> sendNotification(String token, String title, String body) async {
    // Here, you can use a server or external service to send notifications.
  }
}
