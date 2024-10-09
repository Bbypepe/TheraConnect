import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

void main() async {
  // Ensure Flutter is initialized before using any plugins
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase
  await Firebase.initializeApp();
  
  // Get the Firebase Messaging instance
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  // Request permission for notifications
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    sound: true,
  );

  // Check the notification permission status
  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission for notifications.');
  } else if (settings.authorizationStatus == AuthorizationStatus.denied) {
    print('User denied permission for notifications.');
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('User granted provisional permission for notifications.');
  }

  // Run the app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Notification App!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
