import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:orange_bay_new/core/services/preference/preference_service.dart';

///This function takes number localize it
/// * [context] context of widget
/// * [number] to be formatted
String numberLocale(BuildContext context, num number) {
  final preferencesService = getPreferenceService(context);
  final country = preferencesService.locale.languageCode == "ar" ? "EG" : "US";
  return NumberFormat(
    '#.##',
    "${preferencesService.locale.languageCode}_$country",
  ).format(number);
}
