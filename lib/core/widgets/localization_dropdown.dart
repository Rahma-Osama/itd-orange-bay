import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/services/preference/preference_service.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationDropDown extends StatefulWidget {
  const LocalizationDropDown({super.key});

  @override
  State<LocalizationDropDown> createState() => LocalizationDropDownState();
}

class LocalizationDropDownState extends State<LocalizationDropDown> {
  late AppLocalizations locale;
  late List<String> availableLang;
  late String selectedLang;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initLocale();
  }

  @override
  Widget build(BuildContext context) {
    final preferenceServices = getPreferenceService(context, listen: false);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.language,
              color: AppColors.deepOrange,
            ),
            DropdownButton<String>(
              value: locale.language,
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              underline: Container(),
              onChanged: (String? value) {
                setState(() {
                  selectedLang = value!;
                });
                preferenceServices
                    .setLocale(value == locale.english ? 'en' : 'ar');
              },
              items:
                  availableLang.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: AppColors.eerieBlack),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }

  void _initLocale() {
    locale = getL10n(context);
    availableLang = [locale.english, locale.arabic];
    selectedLang = availableLang.first;
  }
}
