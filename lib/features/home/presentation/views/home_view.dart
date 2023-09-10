import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_bay_new/core/widgets/bottom_nav_bar.dart';
import 'package:orange_bay_new/core/widgets/new_appbar.dart';
import 'package:orange_bay_new/features/home/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:orange_bay_new/features/home/presentation/manager/layout_cubit/layout_states.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
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
                appBar: const AppBarNew(),
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
