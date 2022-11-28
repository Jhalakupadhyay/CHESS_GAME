import 'package:flutter/material.dart';
class GAMEP extends StatefulWidget {
  const GAMEP({Key? key}) : super(key: key);

  @override
  State<GAMEP> createState() => _GAMEPState();
}

class _GAMEPState extends State<GAMEP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        title: Text('HERE WE GO!!'),
        centerTitle: true,
      ),
    );
  }
}
