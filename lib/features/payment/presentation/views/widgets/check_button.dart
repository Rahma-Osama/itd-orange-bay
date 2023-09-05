
import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';

import 'package:orange_bay_new/core/theme/styles.dart';



class CheckButton extends StatefulWidget {
  final String text;
  const CheckButton({Key? key, required this.text}) : super(key: key);

  @override
  State<CheckButton> createState() => _CheckButtonState();
}

class _CheckButtonState extends State<CheckButton> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            activeColor: AppColors.MAIN_ORANGE,
            onChanged: (newBool){
              setState(() {
                isChecked = newBool!;
              });
            }
        ),
        Expanded(
          child: Text(
            widget.text,
            style: Styles.TextStyle14.copyWith(color: Colors.black),
            softWrap: true,
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    );
  }
}