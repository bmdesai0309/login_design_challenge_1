import 'package:flutter/material.dart';
import 'package:login_design_challenge_1/sign_up_page.dart';

void main() {
  runApp(SignUpApp());
}

class SignUpApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFFE8716D),
        primaryColor: Color(0xFF2E3E52),
        buttonColor: Color(0xFF6ADCC8),
        primaryColorDark: Color(0xFF7C8BA6),
      ),
      home: SignUp(),
    );
  }
}


