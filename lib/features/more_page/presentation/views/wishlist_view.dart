import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/wishlist_body.dart';

import '../../../../core/shred_widgets/app_bar3.dart';

class WishListView extends StatefulWidget {
  final AnimationController animationController;
  const WishListView({Key? key, required this.animationController}) : super(key: key);

  @override
  State<WishListView> createState() => _WishListViewState();
}

class _WishListViewState extends State<WishListView> with TickerProviderStateMixin  {
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
    return SafeArea(
      child:  Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: const AppBarButtom3(text: 'WishList',),
        body: WishListBody(
          animationController: tabAnimationController,
        )
      ),
    );
  }
}
