import 'package:booka/constants.dart';
import 'package:booka/core/utilities/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const BooKaApp());
}

class BooKaApp extends StatelessWidget {
  const BooKaApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp.router(
      title: 'Booka',
      darkTheme: ThemeData.dark(),
      theme: ThemeData(fontFamily: 'Montserrat').copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      // home:const SplashViewScreen(),
      routerConfig: AppRouter.router,
    );
  }
}
