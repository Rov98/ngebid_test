import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngebid_test/screen/status_screen.dart';

import '../../Theme/App_Theme.dart';

class itemView extends StatelessWidget {
  itemView({
    super.key,
    required this.title,
    required this.id,
    required this.image,
    required this.price,
    required this.weight,
  });
  String title, image;
  int price, id;
  double weight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => Status_Screen(
            id: id,
            title: title,
            price: price,
            image: image,
            weight: weight,
          )),
      child: Card(
        elevation: 5,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(
                        image.isNotEmpty ? image : 'assets/images/shoes_1.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Text(
                  title.toString(),
                  overflow: TextOverflow.clip,
                  style: App_Theme().dataTheme.textTheme.bodyMedium,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price',
                      style: App_Theme()
                          .dataTheme
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.grey),
                    ),
                    Text(
                      price.toString(),
                      style: App_Theme()
                          .dataTheme
                          .textTheme
                          .bodySmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
