import 'package:booka/constants.dart';
import 'package:booka/core/components/custom_loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return 
    
    ClipRRect(
      borderRadius: BorderRadius.circular(kPrimaryBorderRadius),
      child: AspectRatio(
          aspectRatio: 2.9 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            placeholder: (context, url) => const CustomLoadingWidget() ,
            errorWidget: (context, url, error) =>const  Icon(Icons.error_outline_rounded,color: Colors.redAccent,size: 30.0,) ,
           
            imageUrl: imageUrl,
          )
    
          //  Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(kPrimaryBorderRadius),
          //       image: DecorationImage(
          //         image: NetworkImage(imageUrl),
          //         fit: BoxFit.fill,
          //       ),
          //     ),
          //   ),
          ),
    );
  }
}
