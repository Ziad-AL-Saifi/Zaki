import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zaki/presentation/utilities/manager/assets_manager.dart';
import 'package:zaki/presentation/utilities/manager/colors_maneger.dart';
import 'package:zaki/presentation/utilities/routers/routers.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManeger.kPrimaryColor,
      body: Center(child: Image.asset(ImageManager.splashLogo)),
    );
  }

  @override
  void initState() {
    routerDelayed();
    super.initState();
  }

  Future<void> routerDelayed() {
    return Future.delayed(const Duration(seconds: 5), () {
      GoRouter.of(context).pushReplacement(
        RoutersManager.home,
      );
    });
  }
}
