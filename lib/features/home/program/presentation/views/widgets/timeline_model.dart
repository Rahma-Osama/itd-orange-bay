import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/styles.dart';
import 'package:timeline_list/timeline_model.dart';

customTimelineModel({required time, required event}) {
  return TimelineModel(
      Row(
        children: [
          Text(
            time,
            style: Styles.textStyle14,
          ),
          Text(
            event,
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),
          )
        ],
      ),
      position: TimelineItemPosition.random,
      iconBackground: Colors.white,
      icon: Icon(
        Icons.trip_origin,
        color: AppColors.MAIN_ORANGE,
      ));
}
