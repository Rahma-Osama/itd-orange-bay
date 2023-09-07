import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/constants/assets_data.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/widgets/drop_down_button.dart';

customAppBar({context}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Image.asset(
        AssetsData.logo,
        height: MediaQuery.of(context).size.height / 20,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width / 60),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width / 50)),
            child: Row(
              children: [
                Icon(
                  Icons.language,
                  color: AppColors.MAIN_ORANGE,
                ),
                const SizedBox(
                  width: 4,
                ),
                const CustomDropdownButton()
              ],
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width / 50)),
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 60),
          alignment: Alignment.center,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: AppColors.BLACK,
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height / 50,
                  right: MediaQuery.of(context).size.width / 200,
                  child: CircleAvatar(
                    backgroundColor: const Color(0XFFFF4747),
                    radius: MediaQuery.of(context).size.height / 200,
                  )),
            ],
          ),
        ),
      )
    ],
  );
}
