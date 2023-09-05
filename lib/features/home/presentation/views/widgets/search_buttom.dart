import 'package:flutter/material.dart';
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
    return CustomButton(
      width: double.infinity,
      backgroundColor: AppColors.MAIN_ORANGE,
      text: 'Search',
      func: () {},
    );
  }
}
