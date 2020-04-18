import 'package:flutter/material.dart';
import 'package:sertao_app/pages/login.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sertão Digital',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
