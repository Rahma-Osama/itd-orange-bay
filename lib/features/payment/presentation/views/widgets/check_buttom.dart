
import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';

import '../../../../../core/utilities/styles.dart';



class CheckButtom extends StatefulWidget {
  final String text;
  const CheckButtom({Key? key, required this.text}) : super(key: key);

  @override
  State<CheckButtom> createState() => _CheckButtomState();
}

class _CheckButtomState extends State<CheckButtom> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            activeColor: MAIN_ORANGE,
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