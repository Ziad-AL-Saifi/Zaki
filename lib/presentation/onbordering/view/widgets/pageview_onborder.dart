import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/cubit/onbordering_cubit.dart';
import 'itam_page_view.dart';

class PageViewOnboreder extends StatelessWidget {
  const PageViewOnboreder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var pro = BlocProvider.of<OnborderingCubit>(context);
    return PageView.builder(
      onPageChanged: (value) {
        pro.count = value;
      },
      controller: pro.pageController,
      itemCount: pro.onBorderItem.length,
      itemBuilder: (context, index) {
        return ItemPageView(
          onBorderItemModel: pro.onBorderItem[index],
        );
      },
    );
  }
}
