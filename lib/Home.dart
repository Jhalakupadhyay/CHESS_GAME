import 'package:flutter/material.dart';
import 'main.dart';
import 'package:chess/Signup_page.dart';
import 'Login.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        title: Text('Chess'),
        centerTitle: true,
      ),
      body:
       Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: 'Icon',
                child: Image.asset(
                  'images/img.png',
                  alignment: Alignment(-1.0, 0.0),
                ),
              ),
              const Text(
                'CHESS',
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                width: 300.0,
                child: ElevatedButton(onPressed:(){
                  Navigator.pushNamed(context, 'Login');
                },
                  child: Text('Login'),),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: 300.0,
                child: ElevatedButton(onPressed:(){
                  Navigator.pushNamed(context,'Signup');
                },
                  child: Text('Signup'),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
