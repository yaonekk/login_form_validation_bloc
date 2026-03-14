import 'package:flutter/material.dart';
import 'package:login_form_validation/login_page.dart';
import 'package:login_form_validation/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: .dark().copyWith(scaffoldBackgroundColor: Pallete.backgroundColor),
      home: LoginPage(),
    );
  }
}
