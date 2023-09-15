import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/widgets/timeline_model.dart';

import 'package:timeline_list/timeline_model.dart';
import 'package:timeline_list/timeline.dart';

class ProgramsDetails extends StatelessWidget {
  ProgramsDetails({Key? key}) : super(key: key);
  final List<TimelineModel> items = [
    customTimelineModel(time: '8 AM ', event: '- Leaving the marina'),
    customTimelineModel(time: '9 AM ', event: '- Island taxi departure'),
    customTimelineModel(time: '9.30 AM ', event: '- Arriving to the island'),
    customTimelineModel(time: '9.45 AM ', event: '- Stops at reef'),
    customTimelineModel(time: '10 AM ', event: '- Arrive Snack canyan'),
    customTimelineModel(time: '10.15 AM ', event: '- Arrive Snack canyan'),
    customTimelineModel(time: '10.30 AM ', event: '- Arrive Snack canyan'),
    customTimelineModel(time: '11 AM ', event: '- Arrive Snack canyan'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 6, vertical: MediaQuery.of(context).size.height / 40),
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          // height: MediaQuery.of(context).size.height*.4,
          child: Timeline(
            lineWidth: 2,
            children: items,
            position: TimelinePosition.Left,
            lineColor: AppColors.deepOrange,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          ),
        ),
      ),
    );
  }
}
