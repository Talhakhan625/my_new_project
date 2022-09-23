import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_new_project/controller/homeController.dart';
import 'package:my_new_project/model/homePageModel.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  // final _counter = 0.obs;
  final box = GetStorage();
  HomePageModel model = HomePageModel();
  final HomeController controller = HomeController();
  // var counterValue = 0.obs;

  // void _incrementCounter() {
  //   print('The counter has be incremented');
  //   _counter.value++;
  //   _storeCounter();
  // }

  // void _storeCounter() {
  //   box.write("counterKey", _counter.toInt());
  //   print(box.read('counterKey'));

  //   counterValue.value = box.read('counterKey');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                '${controller.homePageModel.counterValue} ',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
