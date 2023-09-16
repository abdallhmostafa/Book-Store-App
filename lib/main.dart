import 'package:booka/constants.dart';
import 'package:booka/core/utilities/app_router.dart';
import 'package:booka/core/utilities/service_locator.dart';
import 'package:booka/features/home/data/repos/home_repo_implement.dart';
import 'package:booka/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:booka/features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const BooKaApp());
}

class BooKaApp extends StatelessWidget {
  const BooKaApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(getIt.get<HomeRepoImplement>())..fetchFeaturedBooks(),),
        BlocProvider(
            create: (context) =>
                NewestBooksCubit(getIt.get<HomeRepoImplement>())..fetchNewestBooks()),
      ],
      child: MaterialApp.router(
        title: 'Booka',
        darkTheme: ThemeData.dark(),
        theme: ThemeData(fontFamily: 'Montserrat').copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
        // home:const SplashViewScreen(),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
