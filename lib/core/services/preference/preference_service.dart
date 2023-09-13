import 'package:flutter/cupertino.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:provider/provider.dart';

class PreferenceService extends ChangeNotifier {
  String _locale = "en";
  Locale get locale => Locale(_locale);

  void setLocale(String langCode) {
    if (!L10n.supportedLocales.contains(Locale(langCode))) return;
    _locale = langCode;
    notifyListeners();
  }

  bool isEn() => _locale == "en";
}

PreferenceService getPreferenceService(BuildContext context) =>
    Provider.of<PreferenceService>(context, listen: false);
