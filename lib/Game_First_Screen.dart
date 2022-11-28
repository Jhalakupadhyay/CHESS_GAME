import 'package:flutter/material.dart';

class GAMEF extends StatelessWidget {
  const GAMEF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Colors.indigo,
            Colors.indigoAccent,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('HEY!!!!'),
          titleTextStyle: TextStyle(
            color: Colors.indigo,
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo[50],
        ),
        body: SingleChildScrollView(
          child: Column(
            children:  [
              Hero(
                tag: 'Icon',
                child: Image(
                  image: AssetImage('images/img.png'),
                ),
              ),
              const SizedBox(
                height: 48.5,
              ),
              Container(
                width: 200.0,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, 'GAMEP');
                },
                  child: Text('START'),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
