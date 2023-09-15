import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';

class CurrencyDropDown extends StatefulWidget {
  const CurrencyDropDown({Key? key}) : super(key: key);

  @override
  State<CurrencyDropDown> createState() => _CurrencyDropDownState();
}

final List<String> currentCurrency = <String>['ُEG', 'Dollar'];
String selectedCurrency = currentCurrency.first;

class _CurrencyDropDownState extends State<CurrencyDropDown> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(size.width / 50),
      ),
      child: Expanded(
        child: DropdownButton<String>(
          value: selectedCurrency,
          icon: const Expanded(child: Icon(Icons.keyboard_arrow_down_outlined)),
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
}
