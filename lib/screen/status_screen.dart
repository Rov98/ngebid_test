import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngebid_test/Theme/App_Theme.dart';
import 'package:ngebid_test/widget/Appbar_Default.dart';

import 'widget.dart/divider_custom_Widget.dart';
import 'widget.dart/invoice_Widget.dart';
import 'widget.dart/produc_detail_Widget.dart';
import 'widget.dart/ringkasan_Widget.dart';
import 'widget.dart/status_Widget.dart';

class Status_Screen extends StatelessWidget {
  Status_Screen({
    super.key,
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.weight,
  });
  //required Data
  int id, price;
  double weight;
  String title, image;
  //

  List<String> listCourier = ['JNE', 'JNT', 'TIKI'];
  var isWaiting = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Appbar_Default(),
        body: ListView(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              child: status_Widget(
                isWaiting: isWaiting,
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
              child: invoice_Widget(
                listCourier: listCourier,
                resi: '#Resi0103',
                tgl: DateTime.now().toString(),
              ),
            ),
            const divider_Custom_Widget(),
            product_detail_Widget(
              image: image,
              price: price,
              title: title,
              weight: weight,
            ),
            const divider_Custom_Widget(),
            Container(
                margin: const EdgeInsets.all(15.0).copyWith(top: 10.0),
                child: ringkasan_Widget(
                  price: price,
                  ongkos: 0,
                )),
            const warning_pembayaran_Widget(),

            //this button
            Container(
              margin: const EdgeInsets.all(15.0).copyWith(top: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 0.0),
                    backgroundColor: Colors.blue,
                    disabledBackgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
                onPressed: () {},
                child: Text(
                  'Konfirmasi Pembayaran',
                  style: App_Theme().dataTheme.textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class warning_pembayaran_Widget extends StatelessWidget {
  const warning_pembayaran_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
      child: Text('Segera Lakukan Pembayaran'),
    );
  }
}
