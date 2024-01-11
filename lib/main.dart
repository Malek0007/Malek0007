import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app_check/firebase_app_check.dart';

import 'src/WelcomePage.dart';
// import 'src/LoginPage.dart';

// void main() => runApp(MyApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAQV1OabAoFCD3QU-AIFSHXbVNa_zkBecY",
      appId: "1:1069087046065:android:f30379f3fe88065fd46590",
      messagingSenderId: "1069087046065",
      projectId: "mobile5-67399",
    ),
  );
  await FirebaseAppCheck.instance.activate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // A widget which will be started on application startup
      home: WelcomePage(),
    );
  }
}
