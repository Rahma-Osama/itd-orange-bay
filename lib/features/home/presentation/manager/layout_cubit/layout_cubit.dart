import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/home_body.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/more_view.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/book_body.dart';
import 'package:orange_bay_new/features/services/presentation/views/services_view.dart';
import 'layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  late AnimationController _animationController;
  int bottomNavBarIndex = 0;

  LayoutCubit({required TickerProvider vsync}) : super(InitialState()) {
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 400), vsync: vsync);
  }

  void changeIndex(int index) {
    bottomNavBarIndex = index;
    emit(ChangeBottomNavBarItem());
  }

  List<Widget> get screens => [
        HomeBody(
          animationController: _animationController,
        ),
        const BookBody(),
        const ServicesView(),
        MoreView(
          animationController: _animationController,
        ),
      ];
}
