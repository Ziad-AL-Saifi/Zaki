import 'package:flutter/material.dart';
import '../../../../app/utilities/manager/colors_maneger.dart';
import '../../model/pagesview_model.dart';
import '../../view_model/function.dart';

class OnborderingBoottomSheet extends StatelessWidget {
  const OnborderingBoottomSheet({
    Key? key,
    required PageController pageController,
    required int counter,
    required this.onBorderItem,
  })  : _pageController = pageController,
        _counter = counter,
        super(key: key);

  final PageController _pageController;
  final int _counter;
  final List<OnBorderItem> onBorderItem;

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
                      _pageController.animateToPage(getPrevPage(_counter),
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.bounceOut);
                    },
                    child: Image.asset('assets/images/left.png')),
                Row(children: [
                  for (int i = 0; i < onBorderItem.length; i++)
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: i == _counter
                            ? Image.asset('assets/images/hold.png')
                            : Image.asset('assets/images/select.png'))
                ]),
                GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(getNextPage(_counter),
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.bounceOut);
                    },
                    child:
                        SizedBox(child: Image.asset('assets/images/right.png')))
              ],
            ),
          ),
        )
      ]),
    );
  }
}
