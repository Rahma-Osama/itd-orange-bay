import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/widgets/bottom_top_move_animation.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/pick_date.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/programs_lists.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/search_button.dart';

// List<String> list = <String>['ُEG', 'Dollar'];

class HomeBody extends StatefulWidget {
  HomeBody({Key? key}) : super(key: key);
  // final String dropdownValue = list.first;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late ScrollController controller;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 400), vsync: this);
    animationController.forward();
    controller = ScrollController(initialScrollOffset: 0.0);
    controller.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    return SingleChildScrollView(
      child: BottomTopMoveAnimationView(
        animationController: animationController,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PickDate(),
              const Search(),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  "${locale.ourPrograms}\n",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Programs(
                animationController: animationController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
