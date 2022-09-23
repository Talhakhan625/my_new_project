import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_new_project/model/homePageModel.dart';

class HomeController extends GetxController {
  final box = GetStorage();
  HomePageModel homePageModel = HomePageModel();
  void incrementCounter() {
    print('The counter has be incremented');
    homePageModel.counter.value++;
    storeCounter();
  }

  void storeCounter() {
    // box.write("counterKey", homePageModel.counter);
    box.write("counterKey", homePageModel.counter.toInt());
    print(box.read('counterKey'));

    homePageModel.counterValue.value = box.read('counterKey');
  }
}
