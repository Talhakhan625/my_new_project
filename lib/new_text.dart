import 'package:flutter/material.dart';

class NewText extends StatefulWidget {
  const NewText({Key? key}) : super(key: key);

  @override
  State<NewText> createState() => _NewTextState();
}

class _NewTextState extends State<NewText> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      print('The counter has be incremented');
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' My page'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Center(
                  child: Text(
                'This is increment value',
              )),
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          ElevatedButton(
              onPressed: () {
                _incrementCounter();
              },
              child: Icon(Icons.add)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
