import 'package:chess/Game_First_Screen.dart';
import 'package:chess/Home.dart';
import 'package:chess/Login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Signup_page.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        'GAMEF' : (context) => GAMEF(),
      },
    );
  }
}
