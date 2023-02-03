import 'package:flutter/material.dart';
import 'package:zaki/app/utilities/manager/assets_manager.dart';
import 'package:zaki/app/utilities/manager/string_manager.dart';
import 'package:zaki/presentation/onbordering/view/widgets/onbordering_body.dart';
import 'package:zaki/presentation/onbordering/view/widgets/onbordering_bottom_sheet.dart';

class OnBorderingView extends StatefulWidget {
  const OnBorderingView({super.key});

  @override
  State<OnBorderingView> createState() => _OnBorderingViewState();
}

class _OnBorderingViewState extends State<OnBorderingView> {
  final List<OnBorderItem> onBorderItem = [
    OnBorderItem(
        title: StringManager.onBorderingHedlin1,
        subTitle: StringManager.onBorderingSubline1,
        image: ImageManager.splashLogo),
    OnBorderItem(
        title: StringManager.onBorderingHedlin2,
        subTitle: StringManager.onBorderingSubline2,
        image: ImageManager.splashLogo),
    OnBorderItem(
        title: StringManager.onBorderingHedlin3,
        subTitle: StringManager.onBorderingSubline3,
        image: ImageManager.splashLogo),
    OnBorderItem(
        title: StringManager.onBorderingHedlin4,
        subTitle: StringManager.onBorderingSubline4,
        image: ImageManager.splashLogo)
  ];

  final int _counter = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const OnborderingBody(),
      bottomSheet: OnborderingBoottomSheet(
          pageController: _pageController,
          counter: _counter,
          onBorderItem: onBorderItem),
    );
  }
}

int getNextPage(int index) {
  int nextPage = ++index;
  if (index == 4) {
    nextPage = 0;
  }
  return nextPage;
}

int getPrevPage(int index) {
  int nextPage = --index;
  if (index == -1) {
    nextPage = 3;
  }
  return nextPage;
}

class OnBorderItem {
  OnBorderItem({
    required this.title,
    required this.subTitle,
    required this.image,
  });

  String image;
  String subTitle;
  String title;
}
