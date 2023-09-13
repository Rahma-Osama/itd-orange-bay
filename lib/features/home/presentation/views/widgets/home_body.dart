import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/widgets/bottom_top_move_animation.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/pick_date.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/programs_lists.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/search_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "${AppLocalizations.of(context)?.ourPrograms}\n",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
