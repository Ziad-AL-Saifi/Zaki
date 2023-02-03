import 'package:flutter/material.dart';

import '../../../../app/utilities/manager/string_manager.dart';

class PageViewOnboreder extends StatelessWidget {
  const PageViewOnboreder({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const Text(StringManager.onBorderingHedlin1),
            const SizedBox(height: 50),
            const Text(StringManager.onBorderingSubline1),
            Image.asset('asset/images/splash.png'),
          ],
        );
      },
    );
  }
}
