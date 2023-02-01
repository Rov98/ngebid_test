import 'package:flutter/material.dart';
import './/Theme/App_Theme.dart';
import './/widget/Appbar_Default.dart';
import './/controller/data_controller.dart';

import 'package:get/get.dart';

import 'widget.dart/ItemView.dart';

class Product_Screen extends StatelessWidget {
  const Product_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Appbar_Default(),
        body: GetBuilder<Data_Controller>(
          init: Data_Controller(),
          // initState: (state) => state.controller!.getAllData(),
          builder: (controller) {
            return controller.allSepatu!.isEmpty
                ? const Center(
                    child: Text('No Products'),
                  )
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: controller.allSepatu!.length,
                    itemBuilder: (context, index) {
                      return itemView(
                        id: controller.allSepatu![index].id as int,
                        title: controller.allSepatu![index].title.toString(),
                        image: controller.allSepatu![index].image.toString(),
                        price: controller.allSepatu![index].price!,
                        weight: controller.allSepatu![index].weight as double,
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}
