import 'package:flutter/cupertino.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.supportedLocales.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }
}
