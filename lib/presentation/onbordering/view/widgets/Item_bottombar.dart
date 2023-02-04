// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zaki/app/utilities/manager/assets_manager.dart';
import '../../../../app/utilities/manager/colors_maneger.dart';
import '../../view_model/cubit/onbordering_cubit.dart';

class BottombarItem extends StatefulWidget {
  const BottombarItem({
    Key? key,
  }) : super(key: key);

  @override
  State<BottombarItem> createState() => _BottombarItemState();
}

class _BottombarItemState extends State<BottombarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManeger.kWhiteColor,
      height: 100,
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        TextButton(onPressed: () {}, child: const Text('Skip')),
        Expanded(
          child: Container(
            height: 100,
            color: ColorsManeger.kDarkPrimaryColor,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      privPAge(context);
                    },
                    child: Image.asset(ImageManager.left)),
                BlocBuilder<OnborderingCubit, OnborderingState>(
                    builder: (context, state) {
                  return Row(children: [
                    for (int i = 0; i < 4; i++)
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: i ==
                                  BlocProvider.of<OnborderingCubit>(context)
                                      .getPageNumber()
                              ? Image.asset(ImageManager.hold)
                              : Image.asset(ImageManager.select))
                  ]);
                }),
                GestureDetector(
                    onTap: () {
                      nextPage(context);
                    },
                    child: SizedBox(child: Image.asset(ImageManager.right)))
              ],
            ),
          ),
        )
      ]),
    );
  }

  void nextPage(BuildContext context) {
    BlocProvider.of<OnborderingCubit>(context).pageController.animateToPage(
        BlocProvider.of<OnborderingCubit>(context).getNextPage(),
        duration: const Duration(milliseconds: 200),
        curve: Curves.decelerate);
  }

  void privPAge(BuildContext context) {
    BlocProvider.of<OnborderingCubit>(context).pageController.animateToPage(
        BlocProvider.of<OnborderingCubit>(context).getPrevPage(),
        duration: const Duration(milliseconds: 200),
        curve: Curves.decelerate);
  }
}
