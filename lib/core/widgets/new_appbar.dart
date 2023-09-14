import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/services/preference/preference_service.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/widgets/drop_down_button.dart';

import 'package:orange_bay_new/core/constants/assets_data.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider<PreferenceService>(
        create: (context) => PreferenceService(),
        builder: (context, child) {
          return AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Image.asset(
                    AssetsData.logo,
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 4,
                  ),
                ),
                const Expanded(flex:1,child: SizedBox()),

                Expanded(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          8),
                    ),
                    child: Expanded(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        
                        icon: const Expanded(child: Icon(Icons.keyboard_arrow_down_outlined)),
                        underline: const SizedBox(),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items: list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: AppColors.BLACK,fontSize: 14),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.language,
                            color: AppColors.MAIN_ORANGE,
                          ),
                        ),
                        // const Spacer(),
                        const Expanded(flex:2,child: CustomDropdownButton())
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 50)),
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Icon(
                                Icons.notifications_none_outlined,
                                color: AppColors.BLACK,
                              ),
                            ),
                        Align(
                          alignment: Alignment.center,

                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                              child: CircleAvatar(
                                backgroundColor: const Color(0XFFFF4747),
                                radius: MediaQuery.of(context).size.height / 200,
                              ),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
