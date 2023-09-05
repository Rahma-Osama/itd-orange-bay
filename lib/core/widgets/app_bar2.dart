import 'package:flutter/material.dart';

class AppBarButtom extends StatefulWidget  implements PreferredSizeWidget {
  const AppBarButtom({Key? key}) : super(key: key);

  @override
  State<AppBarButtom> createState() => _AppBarButtomState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarButtomState extends State<AppBarButtom> {
  bool isFavorite = false;
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
            Expanded(
              child: Align(
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
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
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
                    icon:  Icon(
                      isFavorite
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      size: 20,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite; // Toggle the favorite state
                      });// Replace with the desired navigation action
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}