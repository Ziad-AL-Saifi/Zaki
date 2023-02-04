import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import '../../../../app/utilities/manager/assets_manager.dart';
import '../../../../app/utilities/manager/string_manager.dart';
import '../../model/pagesview_model.dart';
part 'onbordering_state.dart';

class OnborderingCubit extends Cubit<OnborderingState> {
  OnborderingCubit() : super(OnborderNextStat());

  int count = 0;
  PageController pageController = PageController();
  final List<OnBorderItemModel> onBorderItem = [
    OnBorderItemModel(
        title: StringManager.onBorderingHedlin1,
        subTitle: StringManager.onBorderingSubline1,
        image: ImageManager.logo1),
    OnBorderItemModel(
        title: StringManager.onBorderingHedlin2,
        subTitle: StringManager.onBorderingSubline2,
        image: ImageManager.logo2),
    OnBorderItemModel(
        title: StringManager.onBorderingHedlin3,
        subTitle: StringManager.onBorderingSubline3,
        image: ImageManager.logo3),
    OnBorderItemModel(
        title: StringManager.onBorderingHedlin4,
        subTitle: StringManager.onBorderingSubline4,
        image: ImageManager.logo4)
  ];

  int getPageNumber() {
    emit(OnborderNextStat());
    return count;
  }

  int getNextPage() {
    int nextPage = ++count;
    if (count == 4) {
      nextPage = 0;
    }
    return nextPage;
  }

  int getPrevPage() {
    int nextPage = --count;
    if (count == -1) {
      nextPage = 3;
    }
    return nextPage;
  }
}
