import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngebid_test/screen/status_screen.dart';
import './screen/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerces',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Product_Screen(),
    );
  }
}
