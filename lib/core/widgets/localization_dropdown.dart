import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/services/preference/preference_service.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';


class LocalizationDropDown extends StatefulWidget {
  const LocalizationDropDown({super.key});

  @override
  State<LocalizationDropDown> createState() => LocalizationDropDownState();
}
late List<String> availableLang;
String selectedLang = availableLang.first;
class LocalizationDropDownState extends State<LocalizationDropDown> {


  @override
  Widget build(BuildContext context) {
    final preferenceServices = getPreferenceService(context);
    final locale = getL10n(context);
    availableLang = <String>[locale.english, locale.arabic];

    return Container(
      height: kToolbarHeight*.8,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Icon(
              Icons.language,
              color: AppColors.deepOrange,
            ),
          ),
          const Spacer(),
          Expanded(
            flex:4,
            child: DropdownButton<String>(
              value: locale.language,
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              underline: Container(),
              onChanged: (String? value) {
                setState(() {
                  selectedLang = value!;
                  preferenceServices.setLocale(value.toLowerCase().contains('english') || value.contains('الانجليزيه') ?'en':'ar');
                });
              },
              items: availableLang.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: AppColors.eerieBlack),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
