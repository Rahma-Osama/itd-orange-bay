import 'package:flutter/material.dart';

import '../theme/text_styles.dart';

class AppBarButton3 extends StatefulWidget implements PreferredSizeWidget {
  const AppBarButton3({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<AppBarButton3> createState() => _AppBarButton3State();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * .9);
}

class _AppBarButton3State extends State<AppBarButton3> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        margin: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: const [
            BoxShadow(
              color: Color(0x4CA7AEC1),
              blurRadius: 80,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: Colors.black,
            weight: 100.0,
          ),
          onPressed: () {
            Navigator.pop(
                context); // Replace with the desired navigation action
          },
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Center(
        child: Text(
          widget.text,
          style: TextStyles.textStyle16
              .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
