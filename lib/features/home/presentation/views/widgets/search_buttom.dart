import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';

import '../../../../../core/shred_widgets/custom_button.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: double.infinity,
      backgroundColor: MAIN_ORANGE,
      text: 'Search',
      // isChecked: _isChecked,
      func: () {},
    );
  }
}
