import 'package:flutter/material.dart';
import 'package:zaki/presentation/onbordering/view/widgets/pageview_onborder.dart';

import '../../../../app/utilities/manager/colors_maneger.dart';

class OnborderingBody extends StatelessWidget {
  const OnborderingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManeger.kWhiteColor,
      child: const PageViewOnboreder(),
    );
  }
}
