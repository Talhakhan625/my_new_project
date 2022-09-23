import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class StorageNew extends StatefulWidget {
  const StorageNew({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  State<StorageNew> createState() => _StorageNewState();
}

class _StorageNewState extends State<StorageNew> {
  int _counter = 0;
  final box = GetStorage();

  void _incrementCounter() {
    setState(() {
      print('The counter has be incremented');
      _counter++;
    });
  }

  void _storeCounter() {
    box.write("counterKey", _counter);
    print(box.read('counterKey'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
