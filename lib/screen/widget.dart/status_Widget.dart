import 'package:flutter/material.dart';

import '../../Theme/App_Theme.dart';

class status_Widget extends StatelessWidget {
  status_Widget({
    super.key,
    required this.isWaiting,
  });

  bool isWaiting;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Image(
              image: isWaiting
                  ? const AssetImage('assets/asset/waiting.png')
                  : const AssetImage('assets/asset/send.png')),
        ),
        Text(
          'Status',
          style: App_Theme().dataTheme.textTheme.bodyMedium,
        ),
        Text(
          isWaiting ? 'Menunggu Pembayaran' : 'Dalam Perjalanan',
          style: App_Theme().dataTheme.textTheme.bodySmall,
        ),
      ],
    );
  }
}
