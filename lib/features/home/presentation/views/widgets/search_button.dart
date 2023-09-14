import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/services/preference/preference_service.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/widgets/custom_button.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final preferenceServices = getPreferenceService(context);
    final locale = getL10n(context);
    return CustomButton(
      width: double.infinity,
      backgroundColor: AppColors.MAIN_ORANGE,
      text: locale.search,
      func: () {
        preferenceServices.setLocale(preferenceServices.isEn() ? "ar" : "en");
      },
    );
  }
}
