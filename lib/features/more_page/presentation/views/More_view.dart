import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/utilities/widgets/animation.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/more_item_builder.dart';
class MoreView extends StatefulWidget {
  final AnimationController animationController;
  const MoreView({Key? key, required this.animationController}) : super(key: key);

  @override
  State<MoreView> createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> with TickerProviderStateMixin {
  late AnimationController tabAnimationController;
  @override
  void initState() {
    tabAnimationController =
        AnimationController(duration: const Duration(milliseconds: 400), vsync: this);
    tabAnimationController..forward();
    widget.animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    tabAnimationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  BottomTopMoveAnimationView(
      animationController: widget.animationController,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * .45,
            padding: const EdgeInsets.all(18),
            child: ListView.separated(
                itemBuilder: (context, index) => MoreItemBuilder(
                  animationController: tabAnimationController,
                      index: index,
                    ),
                separatorBuilder: (context, index) => Divider(
                      color: GREY,
                    ),
                itemCount: 5
            ),
        ),
      ),
    );
  }
}
