import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/profile_view.dart';

import '../wishlist_view.dart';

class MoreItemBuilder extends StatefulWidget {
  final int index;
  final AnimationController animationController;

  const MoreItemBuilder(
      {Key? key, required this.index, required this.animationController})
      : super(key: key);

  @override
  State<MoreItemBuilder> createState() => _MoreItemBuilderState();
}

class _MoreItemBuilderState extends State<MoreItemBuilder>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  List<Widget> screens = [];

  @override
  void initState() {
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 400), vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) => _startLoadScreen());
    super.initState();
  }

  Future _startLoadScreen() async {
    await Future.delayed(const Duration(milliseconds: 480));
    _animationController.forward();
    setState(() {
      // Initialize the screens list after _animationController is available
      screens = [
        const ProfileView(),
        WishListView(
          animationController: _animationController,
        ),
      ];
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.index < 2
          ? Navigator.push(context,
              MaterialPageRoute(builder: (context) => screens[widget.index]))
          : null,
      child: Container(
          height: MediaQuery.of(context).size.height / 15,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                headers[widget.index],
                style: TextStyle(
                    color: widget.index == 4 ? Colors.red : AppColors.BLACK),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColors.GREY,
              )
            ],
          )),
    );
  }

  List headers = [
    "My PROFILE",
    "My WISHLIST",
    "About Us",
    "Contact US",
    "Logout"
  ];

// List screens=[
//   ProfileView(),
//   WishListView(
//     animationController: _animationController,
//   ),
// ];
}
