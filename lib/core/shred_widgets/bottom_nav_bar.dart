import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_bay_new/constants.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../features/home/presentation/view_model/cubit/layout_cubit.dart';
import '../../features/home/presentation/view_model/cubit/layout_states.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {

    return BlocConsumer<LayoutCubit,LayoutStates>(
      builder: (context,state) {
        return SalomonBottomBar(

          backgroundColor: Colors.white,
          currentIndex: BlocProvider.of<LayoutCubit>(context).bottomNavBarIndex,
          onTap: (i) => BlocProvider.of<LayoutCubit>(context).changeIndex(i),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: MAIN_ORANGE,
            ),

            SalomonBottomBarItem(
              icon: const Icon(Icons.calendar_today_rounded),
              title: const Text("Booking History"),
              selectedColor: MAIN_ORANGE,        ),

            SalomonBottomBarItem(
              icon: const Icon(Icons.fact_check_outlined),
              title: const Text("Services"),
              selectedColor: MAIN_ORANGE,        ),

            SalomonBottomBarItem(
              icon: const Icon(Icons.more_horiz),
              title: const Text("More"),
              selectedColor: MAIN_ORANGE,
            ),
          ],
        );
      }, listener: (BuildContext context, LayoutStates state) {  },
    );
  }
}
