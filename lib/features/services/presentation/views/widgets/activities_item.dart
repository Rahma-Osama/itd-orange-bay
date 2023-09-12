import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/constants/assets_data.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';

class ActivityItem extends StatelessWidget {
  final int index;

  ActivityItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .6,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AssetsData.activites[index],
              height: MediaQuery.of(context).size.height / 7,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                activitiesLabels[index],
                style: TextStyles.textStyle14
                    .copyWith(fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'From 150 EGB',
                style: TextStyles.textStyle12
                    .copyWith(color: AppColors.spanishGray),
              ),
            )
          ],
        ),
      ),
    );
  }

  final List<String> activitiesLabels = [
    "Dolphin Watching",
    "Massage",
    "Photo Session"
  ];
}
