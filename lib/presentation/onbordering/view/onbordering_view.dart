import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zaki/app/utilities/manager/colors_maneger.dart';
import 'package:zaki/app/utilities/manager/values_manager.dart';
import 'package:zaki/presentation/onbordering/view/widgets/onbordering_body.dart';
import 'package:zaki/presentation/onbordering/view/widgets/onbordering_bottom_sheet.dart';

import '../view_model/list_item.dart';

class OnBorderingView extends StatefulWidget {
  const OnBorderingView({super.key});

  @override
  State<OnBorderingView> createState() => _OnBorderingViewState();
}

class _OnBorderingViewState extends State<OnBorderingView> {
  final int _counter = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManeger.kWhiteColor,
        elevation: AppSize.s0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: ColorsManeger.kWhiteColor),
      ),
      body: const OnborderingBody(),
      bottomSheet: OnborderingBoottomSheet(
          pageController: _pageController,
          counter: _counter,
          onBorderItem: onBorderItem),
    );
  }
}
