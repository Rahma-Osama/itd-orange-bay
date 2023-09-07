import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/widgets/bottomtop_move_animation.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/pick_date.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/programs_lists.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/search_button.dart';

List<String> list = <String>['ُEG', 'Dollar'];

class HomeBody extends StatefulWidget {
  final AnimationController animationController;

  HomeBody({Key? key, required this.animationController}) : super(key: key);
  final String dropdownValue = list.first;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody>
    with SingleTickerProviderStateMixin {
  late ScrollController controller;

  @override
  void initState() {
    widget.animationController.forward();
    controller = ScrollController(initialScrollOffset: 0.0);
    controller.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BottomTopMoveAnimationView(
        animationController: widget.animationController,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PickDate(),
              const Search(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Our Programs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Programs(
                animationController: widget.animationController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
