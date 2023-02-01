import 'package:flutter/material.dart';

class divider_Custom_Widget extends StatelessWidget {
  const divider_Custom_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey.shade300,
      ),
    );
  }
}
