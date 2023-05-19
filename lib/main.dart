import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(const HelloFlutterApp());

class HelloFlutterApp extends StatefulWidget {
  const HelloFlutterApp({super.key});

  @override
  State<HelloFlutterApp> createState() => _HelloFlutterAppState();
}

String mobileNumber = "123456789";
String password = "helloworld123";

class _HelloFlutterAppState extends State<HelloFlutterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UNIBIT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
