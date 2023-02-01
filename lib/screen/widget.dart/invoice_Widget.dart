import 'package:flutter/material.dart';

import '../../Theme/App_Theme.dart';

class invoice_Widget extends StatelessWidget {
  invoice_Widget({
    super.key,
    required this.listCourier,
    required this.resi,
    required this.tgl,
  });
  //required Data
  final List<String> listCourier;
  final String tgl, resi;
  //
  final tglController = TextEditingController();
  final resiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tanggal Transaksi',
          style: App_Theme()
              .dataTheme
              .textTheme
              .bodyMedium!
              .copyWith(fontSize: 15),
        ),
        SizedBox(
          height: 40,
          child: TextField(
            controller: tglController,
            enabled: false,
            decoration: const InputDecoration(hintText: '-'),
          ),
        ),
        Text(
          'Kurir Pengiriman',
          style: App_Theme()
              .dataTheme
              .textTheme
              .bodyMedium!
              .copyWith(fontSize: 15),
        ),
        DropdownButton(
          value: listCourier.first,
          items: [
            ...listCourier.map<DropdownMenuItem<String>>(
                (e) => DropdownMenuItem<String>(value: e, child: Text(e))),
          ],
          isExpanded: true,
          icon: Text(
            'Pilih Kurir',
            style: App_Theme().dataTheme.textTheme.bodyMedium!.copyWith(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.normal,
                ),
          ),
          onChanged: (value) {},
        ),
        Text(
          'Nomor Resi',
          style: App_Theme()
              .dataTheme
              .textTheme
              .bodyMedium!
              .copyWith(fontSize: 15),
        ),
        SizedBox(
          height: 40,
          child: TextField(
            controller: resiController,
            enabled: false,
            decoration: const InputDecoration(hintText: '-'),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Invoice',
                style: App_Theme()
                    .dataTheme
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 15),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text('#220717001'),
            ],
          ),
        )
      ],
    );
  }
}
