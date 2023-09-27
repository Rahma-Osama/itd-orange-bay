import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:orange_bay_new/core/services/preference/preference_service.dart';

///This function takes DateTime and format it
/// * [context] context of widget
/// * [dateTime] to be formatted
/// * Formats:
/// * "MMM d, h:mm a" => 16 Jan, 6:00PM
/// * "yMMMd" => 16 Jan 2022
/// * "jm" => 6:00PM
String dateTimeFormatter(BuildContext context, DateTime dateTime,
    {String format = "yMMMd"}) {
  final preferenceService = getPreferenceService(context);
  var formatter = DateFormat(format, preferenceService.locale.languageCode);
  return formatter.format(dateTime);
}
