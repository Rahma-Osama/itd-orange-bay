import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';

class NotificationIconContainer extends StatelessWidget {
  const NotificationIconContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(size.width/80),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(size.width / 50)),
      alignment: Alignment.center,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.notifications_none_outlined,
                color: AppColors.BLACK,
              )),
          Positioned(
              top: size.height / 50,
              right: size.width / 200,
              child: CircleAvatar(
                backgroundColor: const Color(0XFFFF4747),
                radius: size.height / 200,
              )),
        ],
      ),
    );
  }
}
