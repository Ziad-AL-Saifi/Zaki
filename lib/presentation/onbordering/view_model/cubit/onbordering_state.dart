// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'onbordering_cubit.dart';

abstract class OnborderingState {}

class OnborderNumber extends OnborderingState {
  int length;
  OnborderNumber({
    required this.length,
  });
}

class OnborderInit extends OnborderingState {}
