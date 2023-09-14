import 'package:booka/core/utilities/styles_of_text.dart';
import 'package:booka/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:booka/features/home/presentation/view/widgets/featured_list_view.dart';
import 'package:booka/features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

return Padding(

  padding: const EdgeInsets.symmetric(horizontal:25,vertical: 0.0),

  child:   CustomScrollView(

    physics:const BouncingScrollPhysics(),

    slivers: [

      SliverToBoxAdapter(

        child:  Column (

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const  CustomAppBar(),

            SizedBox(

                height: MediaQuery.of(context).size.height * 0.3 ,

                child:const FeaturedListView()),

            const SizedBox(height: 50.0,),

            const  Text( 'Best Seller',style: StylesOfText.textStyle18,),

            const SizedBox(height: 20.0,),



          ],

        ),

      ),

      const SliverFillRemaining(

        // hasScrollBody: false,

        child:   BestSellerListView(),



      )

    ],

  ),

);

  }
}
