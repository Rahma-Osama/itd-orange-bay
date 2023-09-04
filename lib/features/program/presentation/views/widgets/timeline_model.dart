import 'package:flutter/material.dart';
import 'package:timeline_list/timeline_model.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilities/styles.dart';
customTimelineModel({required time,required event}){
  return TimelineModel(Row(

      children: [
      Text(time,style: Styles.TextStyle14,),
      Text(event,style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400),)
],
  ),
      position: TimelineItemPosition.random,
      iconBackground: Colors.white,
      icon: Icon(Icons.trip_origin,color: MAIN_ORANGE,));
}
