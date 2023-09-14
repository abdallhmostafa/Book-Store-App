import 'package:booka/core/utilities/app_router.dart';
import 'package:booka/core/utilities/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logoImage2,
            height: 35,
          ),
          IconButton(
              onPressed: () => GoRouter.of(context).push(AppRouter.kSearchView),
              icon: const Icon(
                Icons.search_rounded,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
