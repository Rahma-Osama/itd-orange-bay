import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/services/preference/preference_service.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';

const List<String> list = <String>['english', 'العربيه'];

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({super.key});

  @override
  State<CustomDropdownButton> createState() => CustomDropdownButtonState();
}

class CustomDropdownButtonState extends State<CustomDropdownButton> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    final preferenceServices = getPreferenceService(context);

    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      underline: Container(),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
          value == "english"
              ? preferenceServices.setLocale('en')
              : preferenceServices.setLocale('ar');
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
    );
  }
}
