import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_bay_new/core/shred_widgets/app_bar.dart';
import 'package:orange_bay_new/core/shred_widgets/new_appbar.dart';

import 'package:orange_bay_new/features/home/presentation/views/widgets/home_body.dart';

import '../../../../core/shred_widgets/bottom_nav_bar.dart';
import '../view_model/cubit/layout_cubit.dart';
import '../view_model/cubit/layout_states.dart';

class HomeLayout extends StatefulWidget  {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> with TickerProviderStateMixin {
  late LayoutCubit _layoutCubit;
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _layoutCubit = LayoutCubit(vsync: this); // Pass vsync to LayoutCubit
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // _layoutCubit._startLoadScreen();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (ctx) => LayoutCubit(vsync: this),
          ),
        ],
        child: BlocConsumer<LayoutCubit, LayoutStates>(
          builder: (context, state) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: Colors.grey[100],
                appBar:  AppBarNew(),
                bottomNavigationBar: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width / 40)),
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 20),
                  child: const BottomNavBar(),
                ),
                body: BlocProvider.of<LayoutCubit>(context).screens[
                    BlocProvider.of<LayoutCubit>(context).bottomNavBarIndex],
              ),
            );
          },
          listener: (BuildContext context, LayoutStates state) {},
        ));
  }
}
