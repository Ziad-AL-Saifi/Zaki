import 'package:flutter/material.dart';
import 'package:zaki/app/utilities/manager/assets_manager.dart';
import 'package:zaki/app/utilities/manager/colors_maneger.dart';
import 'package:zaki/app/utilities/manager/font_manager.dart';
import 'package:zaki/app/utilities/manager/style_manager.dart';
import '../../../../app/utilities/manager/string_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'itam_page_view.dart';

class PageViewOnboreder extends StatelessWidget {
  const PageViewOnboreder({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: 4,
      itemBuilder: (context, index) {
        return const ItemPageView(
          image: ImageManager.logo1,
          subTitle: StringManager.onBorderingSubline1,
          title: StringManager.onBorderingHedlin1,
        );
      },
    );
  }
}
