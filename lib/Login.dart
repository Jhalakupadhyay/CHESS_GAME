import 'package:flutter/material.dart';
import 'package:chess/Constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuth.instance;
  String mail = "";
  var password;
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
                onChanged: (value){
                  mail = value;
                },
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
                onChanged: (value){
                  password = value;
                },
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
              child: ElevatedButton(onPressed:(){
                try{
                  final user = _auth.signInWithEmailAndPassword(email: mail, password: password);
                  if(user != Null)
                    {
                      Navigator.pushNamed(context, 'GAMEF');
                    }
                }
                catch(e)
                {
                  print(e);
                }
              },
                child: Text('Login'),),
            ),
          ],
        ),
      ),
    );
  }
}
