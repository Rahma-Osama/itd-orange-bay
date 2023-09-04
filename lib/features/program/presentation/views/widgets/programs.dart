import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/utilities/assets.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/timeline_model.dart';
import 'package:timeline_list/timeline_model.dart';
import 'package:timeline_list/timeline.dart';

class ProgramsDetails extends StatelessWidget {
   ProgramsDetails({Key? key}) : super(key: key);
  List<TimelineModel> items = [
    customTimelineModel(time:'8 AM ',event: '- Leaving the marina' ),
    customTimelineModel(time:'9 AM ',event: '- Island taxi departure' ),
    customTimelineModel(time:'9.30 AM ',event: '- Arriving to the island' ),
    customTimelineModel(time:'9.45 AM ',event: '- Stops at reef' ),
    customTimelineModel(time:'10 AM ',event: '- Arrive Snack canyan' ),
    customTimelineModel(time:'10.15 AM ',event: '- Arrive Snack canyan' ),
    customTimelineModel(time:'10.30 AM ',event: '- Arrive Snack canyan' ),
    customTimelineModel(time:'11 AM ',event: '- Arrive Snack canyan' ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:6,vertical: MediaQuery.of(context).size.height/40),
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          // height: MediaQuery.of(context).size.height*.4,
          child: Timeline(lineWidth:2,children: items, position: TimelinePosition.Left,lineColor: MAIN_ORANGE,physics: NeverScrollableScrollPhysics(),shrinkWrap: true,),
        ),
      ),
    );
  }
}
// Timeline.tileBuilder(
// theme: TimelineThemeData(
// color: MAIN_ORANGE
// ),
// builder: TimelineTileBuilder.fromStyle(
// indicatorStyle:IndicatorStyle.outlined,
// contentsAlign: ContentsAlign.basic,
// contentsBuilder: (context, index) => Padding(
// padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
// child: Row(
// children: [
// Text('8 AM',style: Styles.TextStyle14,),
// Text('-Leaving the Marina',style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400),)
// ],
// ),
// ),
// itemCount: 8,
// ),
// )
