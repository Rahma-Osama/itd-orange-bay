import 'package:flutter/material.dart';

import '../utilities/styles.dart';

class AppBarButtom3 extends StatefulWidget  implements PreferredSizeWidget {
  const AppBarButtom3({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<AppBarButtom3> createState() => _AppBarButtom3State();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarButtom3State extends State<AppBarButtom3> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SizedBox(),
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 40,
                height: 40,
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
                        context
                    ); // Replace with the desired navigation action
                  },
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  widget.text,
                  style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}