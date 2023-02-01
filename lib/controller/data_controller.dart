import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngebid_test/controller/DB_Helper.dart';
import 'package:ngebid_test/model/Sepatu.dart';

class Data_Controller extends GetxController {
  List<Sepatu> _listSepatu = [];

  List<Sepatu>? get allSepatu {
    return _listSepatu;
  }

  @override
  void onInit() {
    if (kDebugMode) {
      print(_listSepatu.length);
    }
    // deleteAll();
    getAllData();
    super.onInit();
  }

  Future<void> getAllData() async {
    final getDb = await (await DB_Helper.fetchData());
    _listSepatu = [
      ...getDb.map(
        (e) => Sepatu(
            id: e['id'] as int,
            title: e['title'].toString(),
            price: e['price'] as int,
            image: e['image'].toString(),
            weight: e['weight'] as double),
      )
    ];
    update();
  }

  Future<void> insertData(String title, image, int price, double weight) async {
    final uniqeId = UniqueKey().hashCode;
    _listSepatu.add(
      Sepatu(
          id: uniqeId,
          title: title,
          price: price,
          image: image,
          weight: weight),
    );
    await DB_Helper.insert(uniqeId, title, image, price, weight);
    update();
  }

  Future<void> deleteAll() async {
    _listSepatu.clear();
    final clear = await DB_Helper.clearTable();
    update();
    clear;
  }
}
