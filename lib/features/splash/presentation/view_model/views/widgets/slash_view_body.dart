import 'package:booka/core/utilities/app_router.dart';
import 'package:booka/core/utilities/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    initFadeAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) => FadeTransition(
            opacity: animation,
            child: Image.asset(
              AssetsData.logoImage,
              width: MediaQuery.of(context).size.width * 0.7,
            ),
          ),
        ),
      ),
    );
  }

  void initFadeAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));

    animation = Tween<double>(begin: 0.1, end: 1).animate(animationController);
    // animation =
    //     CurvedAnimation(parent: animationController, curve: Curves.easeIn);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () => GoRouter.of(context).pushReplacement(AppRouter.kHomeView)

      // transition: Transition.fadeIn,duration:const Duration(microseconds: 700))
      ,
    );
  }
}
