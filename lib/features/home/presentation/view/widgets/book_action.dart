import 'package:booka/core/components/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
          backgroundColor: Colors.white,
          color: Colors.black,
          text: '19.99 \$',
          onPressed: () {},
          isLeft: true,
        )),
        Expanded(
            child: CustomButton(
          fontSize: 16.0,
          backgroundColor: const Color(0xffEF8262),
          color: Colors.white,
          text: 'Free Preview',
          onPressed: () {},
          isLeft: false,
        ))
      ],
    );
  }
}
