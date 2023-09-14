import 'package:booka/constants.dart';
import 'package:booka/core/utilities/assets_data.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 2.9  /4,
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kPrimaryBorderRadius),
          image: const DecorationImage(
            image:  AssetImage(AssetsData.image3),
            fit: BoxFit.fill,


          ),
        ),
      ),
    );
  }
}

