import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/widgets/timeline_model.dart';

import 'package:timeline_list/timeline_model.dart';
import 'package:timeline_list/timeline.dart';

class ProgramsDetails extends StatelessWidget {
  const ProgramsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    final List<TimelineModel> items = [
      customTimelineModel(time: '8 AM ', event: locale.leaveMarina),
      customTimelineModel(time: '9 AM ', event: locale.taxi),
      customTimelineModel(time: '9.30 AM ', event: locale.arriveIsland),
      customTimelineModel(time: '9.45 AM ', event: locale.stopsReef),
      customTimelineModel(time: '10 AM ', event: locale.arriveSnack),
      customTimelineModel(time: '10.15 AM ', event: locale.arriveSnack),
      customTimelineModel(time: '10.30 AM ', event: locale.arriveSnack),
      customTimelineModel(time: '11 AM ', event: locale.arriveSnack),
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 6, vertical: MediaQuery.of(context).size.height / 40),
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Timeline(
            lineWidth: 2,
            children: items,
            position: TimelinePosition.Left,
            lineColor: AppColors.MAIN_ORANGE,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          ),
        ),
      ),
    );
  }
}
