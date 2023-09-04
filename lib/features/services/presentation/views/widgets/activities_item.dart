import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/utilities/assets.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
class ActivityItem extends StatelessWidget {
  final index;
  ActivityItem({Key? key , required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width*.6,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AssetData.activites[index],height: MediaQuery.of(context).size.height/7,fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.all( 8.0),
              child: Text(activitiesLabels[index],style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('From 150 EGB',style: Styles.TextStyle12.copyWith(color: GREY),),
            )
          ],
        ),
      ),
    );
  }
  List<String> activitiesLabels=["Dolphin Watching","Massage","Photo Session"];
}
