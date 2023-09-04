import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/home_body.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/More_view.dart';


import '../../../../booking_history/presentation/views/book_view.dart';
import '../../../../booking_history/presentation/views/widgets/book_body.dart';
import '../../../../services/presentation/views/Services_layout.dart';
import 'layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates>  {
  late AnimationController _animationController;
  int bottomNavBarIndex = 0;

  LayoutCubit({required TickerProvider vsync}) : super(IntialState()) {
    _animationController =
        AnimationController(duration: Duration(milliseconds: 400), vsync: vsync);
  }

  void _startLoadScreen() async {
    await Future.delayed(const Duration(milliseconds: 480));
    _animationController.forward();
  }



  changeIndex(index) {
    bottomNavBarIndex = index;
    print(index);
    emit(ChangeBottomNavBaerItem());
  }

  List<Widget> get screens => [
   HomeBody(
     animationController: _animationController,
   ),
    BookBody(),
    ServicesLayout(),
    MoreView(
      animationController: _animationController,
    ),

  ];
}