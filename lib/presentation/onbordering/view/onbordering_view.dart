import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zaki/app/utilities/manager/colors_maneger.dart';
import 'package:zaki/app/utilities/manager/values_manager.dart';
import 'package:zaki/presentation/onbordering/view/widgets/onbordering_body.dart';
import 'package:zaki/presentation/onbordering/view/widgets/onbordering_bottom_sheet.dart';

class OnBorderingView extends StatelessWidget {
  const OnBorderingView({super.key});

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
        bottomSheet: const OnborderingBoottomSheet());
  }
}
