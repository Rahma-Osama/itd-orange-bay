import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/widgets/home_app_bar.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/home_body.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/history_body.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/more_view.dart';
import 'package:orange_bay_new/features/services/presentation/views/services_view.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
       HomeBody(),
      const HistoryBody(),
      const ServicesView(),
      const MoreView(),
    ];
    final locale = getL10n(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: const HomeAppBar(),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(12),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width / 40)),
          child: SalomonBottomBar(
            backgroundColor: Colors.white,
            currentIndex: currentIndex,
            onTap: (i) => setState(() => currentIndex = i),
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.home),
                title: Text(locale.home),
                selectedColor: AppColors.deepOrange,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.calendar_today_rounded),
                title: Text(locale.history),
                selectedColor: AppColors.deepOrange,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.fact_check_outlined),
                title: Text(locale.services),
                selectedColor: AppColors.deepOrange,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.more_horiz),
                title: Text(locale.more),
                selectedColor: AppColors.deepOrange,
              ),
            ],
          ),
        ),
        body: screens[currentIndex],
      ),
    );
  }
}
