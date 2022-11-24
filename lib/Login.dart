import 'package:flutter/material.dart';
import 'main.dart';
import 'package:chess/Home.dart';
import 'Constants.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        title: Text('LOGIN'),
        centerTitle: true,
        backgroundColor: Colors.indigo[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            const Hero(
              tag: 'Icon',
              child: Image(image: AssetImage('images/img.png'),
                width: 500.0,
                height: 150.0,),
            ),
            const SizedBox(
              height: 48.0,
            ),
            Container(
              width: 350.0,
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                decoration: kMessageTextFieldDecoration.copyWith(hintText: 'Enter Mail Id'),
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Container(
              width: 350.0,
              child: TextField(
                obscureText: true,
                style: const TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                decoration: kMessageTextFieldDecoration.copyWith(hintText: 'Enter Password'),
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Container(
              width: 300.0,
              child: ElevatedButton(onPressed:(){},
                child: Text('Login'),),
            ),
          ],
        ),
      ),
    );
  }
}
