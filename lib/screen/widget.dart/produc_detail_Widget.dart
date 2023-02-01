import 'package:flutter/material.dart';

import '../../Theme/App_Theme.dart';

class product_detail_Widget extends StatelessWidget {
  product_detail_Widget({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.weight,
  });

  String title, image;
  int price;
  double weight;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            alignment: Alignment.center,
            child: Image(
              image: AssetImage(
                  image.isNotEmpty ? image : 'assets/images/shoes_1.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              maxLines: 2,
              style: App_Theme().dataTheme.textTheme.bodyLarge!.copyWith(
                    fontSize: 20,
                  ),
            ),
          ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Price: Rp.${price.toString()}',
            style: App_Theme()
                .dataTheme
                .textTheme
                .bodySmall!
                .copyWith(fontWeight: FontWeight.w400, fontSize: 17),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            '${weight}gr',
            style: App_Theme().dataTheme.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
        ],
      ),
    );
  }
}
