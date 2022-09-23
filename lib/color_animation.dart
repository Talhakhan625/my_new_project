import 'package:flutter/material.dart';

class MyColor extends StatefulWidget {
  const MyColor({Key? key}) : super(key: key);

  @override
  State<MyColor> createState() => _MyColorState();
}

class _MyColorState extends State<MyColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Color Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ]),
    );
  }
}
