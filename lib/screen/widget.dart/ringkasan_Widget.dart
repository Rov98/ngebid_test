import 'package:flutter/material.dart';
import 'package:ngebid_test/constant.dart';

import '../../Theme/App_Theme.dart';

class ringkasan_Widget extends StatelessWidget {
  ringkasan_Widget({
    super.key,
    required this.price,
    required this.ongkos,
  });
  int price, ongkos;

  Widget rowDetail(String title, harga) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: App_Theme()
                .dataTheme
                .textTheme
                .bodySmall!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          Text(
            harga,
            style: App_Theme()
                .dataTheme
                .textTheme
                .bodySmall!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            'Ringkasan',
            style: App_Theme()
                .dataTheme
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 18),
          ),
        ),
        rowDetail('Harga Produk', 'Rp.$price'),
        rowDetail('Platform Fee', 'Rp.$platformFee'),
        rowDetail('Ongkos Kirim', 'Rp.$ongkos'),
        Container(
          height: 5,
          margin: const EdgeInsets.all(10),
          color: Colors.grey.shade700,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: App_Theme()
                      .dataTheme
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 15),
                ),
                Text(
                  'Rp.${price + platformFee}',
                  style: App_Theme()
                      .dataTheme
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
