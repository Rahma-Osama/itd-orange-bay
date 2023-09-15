import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/services/preference/preference_service.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';


class LocalizationDropDown extends StatefulWidget {
  const LocalizationDropDown({super.key});

  @override
  State<LocalizationDropDown> createState() => LocalizationDropDownState();
}
final List<String> availableLang = <String>['english', 'العربيه'];
String selectedLang = availableLang.first;
class LocalizationDropDownState extends State<LocalizationDropDown> {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final preferenceServices = getPreferenceService(context);

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
              size.width / 50)),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Icon(
                Icons.language,
                color: AppColors.MAIN_ORANGE,
              ),
            ),
            const Spacer(),
            DropdownButton<String>(
              value: selectedLang,
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              underline: Container(),
              onChanged: (String? value) {
                setState(() {
                  selectedLang = value!;
                  preferenceServices.setLocale(value.toLowerCase().contains('english')?'en':'ar');
                });
              },
              items: availableLang.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: AppColors.BLACK),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
