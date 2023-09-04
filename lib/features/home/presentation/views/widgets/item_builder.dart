import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';

import '../../../../../core/utilities/styles.dart';

class ItemBuilder extends StatelessWidget {
  final AnimationController animationController;
  final Animation<double> animation;

  ItemBuilder(
      {Key? key, required this.animationController, required this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget? child) {
          return FadeTransition(
            opacity: animation,
            child: Transform(
              transform: Matrix4.translationValues(
                  100 * (1.0 - animation.value), 0.0, 0.0),
              child: child,
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width * .5,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(75)),
                color: Colors.grey),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/img_1.png',
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 60, left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Go Island",
                        style: Styles.TextStyle16,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: MAIN_ORANGE,
                            ),
                            Text(
                              "4.7",
                              style: Styles.TextStyle12,
                            ),
                            Text(
                              '(92)',
                              style: Styles.TextStyle12.copyWith(color: GREY),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Row(
                    children: [
                      Text(
                        "Starting from ",
                        style: Styles.TextStyle12.copyWith(
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "1000 EGP per person",
                        style: Styles.TextStyle14,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: Row(
                    children: [
                      Text(
                        "Starting from ",
                        style: Styles.TextStyle12.copyWith(
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "700 EGP per child",
                        style: Styles.TextStyle14,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
