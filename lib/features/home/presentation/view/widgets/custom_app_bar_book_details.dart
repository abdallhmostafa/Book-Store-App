import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: ()=>GoRouter.of(context).pop(),
            padding: EdgeInsets.zero,
            icon:const Icon(Icons.close_rounded,color: Colors.white,size: 30,)),
        IconButton(onPressed: (){},
            padding: EdgeInsets.zero,

            icon:const Icon(Icons.shopping_cart_checkout_outlined,color: Colors.white,size: 30,))

      ],
    );
  }
}
