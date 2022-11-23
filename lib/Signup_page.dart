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
          crossAxisAlignment: CrossAxisAlignment.stretch,
           children:  [
            const Image(image: AssetImage('images/img.png'),
              width: 50.0,
            height: 150.0,),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              style: const TextStyle(
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
              cursorColor: Colors.white,
              decoration: kMessageTextFieldDecoration.copyWith(hintText: 'Enter Mail Id'),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              obscureText: true,
              style: const TextStyle(
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
              cursorColor: Colors.white,
              decoration: kMessageTextFieldDecoration.copyWith(hintText: 'Enter Password'),
            ),
             const SizedBox(
               height: 48.0,
             ),
             ElevatedButton(onPressed:(){},
                 child: Text('REGISTER'),),
          ],
        ),
      ),
    );
  }
}
