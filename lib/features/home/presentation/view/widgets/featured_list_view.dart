import 'package:booka/features/home/presentation/view/widgets/cutom_book_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 10.0), child: CustomBookItem()),
    );
  }
}
