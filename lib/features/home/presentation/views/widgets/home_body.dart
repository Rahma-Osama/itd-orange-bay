import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
import 'package:orange_bay_new/core/utilities/widgets/animation.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/activities_list.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/pick_date.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/programs_lists.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/search_buttom.dart';
import 'package:orange_bay_new/features/services/presentation/views/activity_view.dart';
import 'package:page_transition/page_transition.dart';

import 'item_builder.dart';


List<String> list = <String>['ُEG','Dollar'];
class HomeBody extends StatefulWidget {
  final AnimationController animationController;
   HomeBody({Key? key, required this.animationController}) : super(key: key);
   String dropdownValue = list.first;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> with SingleTickerProviderStateMixin {
  late ScrollController controller;
  late AnimationController _animationController;
  void initState() {
    _animationController = AnimationController(duration: const Duration(milliseconds: 0), vsync: this);
    widget.animationController.forward();
    controller = ScrollController(initialScrollOffset: 0.0);
    controller
      ..addListener(() {
      });
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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Container(
              //       padding: EdgeInsets.symmetric(
              //         horizontal: MediaQuery.of(context).size.width / 60,
              //         vertical: 0, // Adjust this value to align vertically as needed
              //       ),
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(
              //             MediaQuery.of(context).size.width / 50),),
              //       child: DropdownButton<String>(
              //         value: widget.dropdownValue,
              //         icon: const Icon(Icons.keyboard_arrow_down_outlined),
              //
              //         // style: const TextStyle(color: Colors.deepPurple),
              //         underline: SizedBox(),
              //         onChanged: (String? value) {
              //           // This is called when the user selects an item.
              //           setState(() {
              //             widget.dropdownValue = value!;
              //           });
              //         },
              //         items: list.map<DropdownMenuItem<String>>((String value) {
              //           return DropdownMenuItem<String>(
              //             value: value,
              //             child: Text(value,style: TextStyle(color: BLACK),),
              //           );
              //         }).toList(),
              //       ),
              //     ),
              //
              //   ],
              // ),
              const PickDate(),
              const Search(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Our Programs",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
              ),
              // SizedBox(
              //     height: MediaQuery.of(context).size.height * .5,
                  // child: ListView.builder(
                  //     itemCount: 10,
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, index) => ItemBuilder(
                  //       animationController: widget.animationController,
                  //     )))
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 16.0),
              //       child: Text("Top Programs in Orange Bay",style: Styles.TextStyle14,),
              //     ),
              //     GestureDetector(child: Text("See all",style: TextStyle(color: MAIN_ORANGE),),)
              //   ],
              // ),
              Programs(
                animationController: widget.animationController,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Text("Today Activities",style: Styles.TextStyle14,),
              //     ),
              //     GestureDetector(
              //       onTap: (){
              //         Navigator.push(context,PageTransition(child: ActivityView(),
              //             type: PageTransitionType.topToBottom,duration: Duration(seconds: 2)));
              //       },
              //       child: Text("See all",style: TextStyle(color: MAIN_ORANGE),),)
              //   ],
              // ),
              // Activities()

            ],
          ),
        ),
      ),
    );
  }
}
