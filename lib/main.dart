import 'package:chess/Home.dart';
import 'package:chess/Login.dart';
import 'package:flutter/material.dart';
import 'Signup_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: 'Home',
      routes: {
        'Signup' : (context) => Signup(),
        'Home' : (context) => Home(),
        'Login' : (context) => Login(),
      },
    );
  }
}
