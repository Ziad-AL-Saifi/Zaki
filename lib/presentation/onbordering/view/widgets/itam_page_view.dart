import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/utilities/manager/colors_maneger.dart';
import '../../../../app/utilities/manager/font_manager.dart';
import '../../../../app/utilities/manager/style_manager.dart';

class ItemPageView extends StatelessWidget {
  const ItemPageView({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(title,
            textAlign: TextAlign.center,
            style: getSemilBold(
              size: SizeFontManager.s16,
              color: ColorsManeger.kGrayColor,
            )),
        const SizedBox(height: 30),
        Text(subTitle,
            textAlign: TextAlign.center,
            style: getRegular(
              size: SizeFontManager.s14,
              color: ColorsManeger.kLightGrayColor,
            )),
        const SizedBox(height: 30),
        SvgPicture.asset(image)
      ],
    );
  }
}
