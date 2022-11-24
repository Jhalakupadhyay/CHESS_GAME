import 'package:flutter/material.dart';
import 'Constants.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        title: Text('SIGNUP'),
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
                   child: Text('Register'),),
             ),
          ],
        ),
      ),
    );
  }
}
