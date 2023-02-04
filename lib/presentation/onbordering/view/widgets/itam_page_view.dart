import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zaki/app/utilities/manager/assets_manager.dart';
import 'package:zaki/presentation/onbordering/model/pagesview_model.dart';

import '../../../../app/utilities/manager/colors_maneger.dart';
import '../../../../app/utilities/manager/font_manager.dart';
import '../../../../app/utilities/manager/style_manager.dart';

class ItemPageView extends StatelessWidget {
  const ItemPageView({
    Key? key,
    required this.onBorderItemModel,
  }) : super(key: key);
  final OnBorderItemModel onBorderItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(onBorderItemModel.title,
            textAlign: TextAlign.center,
            style: getSemilBold(
              size: SizeFontManager.s16,
              color: ColorsManeger.kGrayColor,
            )),
        const SizedBox(height: 30),
        Text(onBorderItemModel.subTitle,
            textAlign: TextAlign.center,
            style: getRegular(
              size: SizeFontManager.s14,
              color: ColorsManeger.kLightGrayColor,
            )),
        const SizedBox(height: 30),
        SvgPicture.asset(onBorderItemModel.image)
      ],
    );
  }
}
