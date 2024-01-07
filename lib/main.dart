import 'package:flutter/material.dart';

import 'WelcomePage.dart';
import 'LoginPage.dart';

void main() => runApp(MyApp());

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
