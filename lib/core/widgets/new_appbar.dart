import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/widgets/drop_down_button.dart';

import 'package:orange_bay_new/core/constants/assets_data.dart';

List<String> list = <String>['ُEG', 'Dollar'];

class AppBarNew extends StatefulWidget implements PreferredSizeWidget {
  const AppBarNew({Key? key}) : super(key: key);

  @override
  State<AppBarNew> createState() => _AppBarNewState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarNewState extends State<AppBarNew> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Image.asset(
              AssetsData.logo,
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.width / 4,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 12,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 60,
                vertical: 0, // Adjust this value to align vertically as needed
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width / 50),
              ),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down_outlined),

                // style: const TextStyle(color: Colors.deepPurple),
                underline: const SizedBox(),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: AppColors.BLACK),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0, // Adjust this value to align vertically as needed
              ),
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
              ),
            ),
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
      ),
    );
  }
}
