import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngebid_test/Theme/App_Theme.dart';
import 'package:ngebid_test/constant.dart';
import 'package:ngebid_test/controller/data_controller.dart';

AppBar Appbar_Default() {
  Get.put(Data_Controller());
  return AppBar(
    title: Text(
      AppName,
      style: App_Theme().dataTheme.textTheme.bodyLarge,
    ),
    //  hardcoded add data
    // actions: [
    //   IconButton(
    //     onPressed: () {
    //       Get.find<Data_Controller>().insertData(
    //           'Nike Air jordan Grey', 'assets/images/shoes_1.png', 50000, 45.0);
    //     },
    //     icon: const Icon(
    //       Icons.add_rounded,
    //       color: Colors.black,
    //     ),
    //   )
    // ],
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
