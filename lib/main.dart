import 'package:dart_flutter_test/sreens/home.dart';
import 'package:dart_flutter_test/sreens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gym App',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
