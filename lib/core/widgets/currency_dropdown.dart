import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class CurrencyDropDown extends StatefulWidget {
  const CurrencyDropDown({Key? key}) : super(key: key);

  @override
  State<CurrencyDropDown> createState() => _CurrencyDropDownState();
}

late List<String> currentCurrency ;
late String selectedCurrency;
late AppLocalizations locale;


class _CurrencyDropDownState extends State<CurrencyDropDown> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initLocale();
  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: DropdownButton<String>(
          value: selectedCurrency,
          icon: const Icon(Icons.keyboard_arrow_down_outlined),
          underline: const SizedBox(),
          onChanged: (String? value) {
            setState(() {
              selectedCurrency = value!;
            });
          },
          items: currentCurrency.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: AppColors.eerieBlack),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
  void _initLocale() {
    locale = getL10n(context);
    currentCurrency=[locale.eg,locale.dollar];
    selectedCurrency = currentCurrency.first;
  }
}
