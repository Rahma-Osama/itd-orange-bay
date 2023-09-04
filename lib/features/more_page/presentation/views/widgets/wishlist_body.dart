import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utilities/widgets/animation.dart';

import '../../../../home/presentation/views/widgets/program_container.dart';

class WishListBody extends StatefulWidget {
  final AnimationController animationController;
  const WishListBody({Key? key, required this.animationController}) : super(key: key);


  @override
  State<WishListBody> createState() => _WishListBodyState();
}

class _WishListBodyState extends State<WishListBody> with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    widget.animationController.forward();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          var count = 3;
          var animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              parent: widget.animationController,
              curve: Interval((1 / count) * index, 1.0,
                  curve: Curves.fastOutSlowIn)));
          widget.animationController.forward();
          return  Stack(
              children: [
                ProgramContainer(
                  animation: animation,
                  whishScreen: true,
                  animationController: widget.animationController,
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
                  child: const Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ))),
                )
              ],
          );
        },
        itemCount: 10,
      ),
    );
  }
}
