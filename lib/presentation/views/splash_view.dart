import 'package:flutter/material.dart';
import 'package:zaki/presentation/utilities/manager/colors_maneger.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManeger.kPrimaryColor,
      body: Image.asset('assets/images/splash.png'),
    );
  }
}
