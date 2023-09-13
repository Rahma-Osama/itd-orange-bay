import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/provider/locale_provider.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider<LocaleProvider>(
        create: (context) => LocaleProvider(),
        builder: (context, child) {
          final provider = Provider.of<LocaleProvider>(context);
          return DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
            underline: Container(),
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value!;
                value == "english"
                    ? provider.setLocale(const Locale('en'))
                    : provider.setLocale(const Locale('ar'));
                debugPrint(provider.locale.languageCode);
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
        });
  }
}
