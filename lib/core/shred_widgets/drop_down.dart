import 'package:flutter/material.dart';

import '../../constants.dart';

const List<String> list=<String>['english','العربيه'];


class CustomDropdownButton extends StatefulWidget {

  const CustomDropdownButton({super.key});

  @override
  State<CustomDropdownButton> createState() => CustomDropdownButtonState();
}

class CustomDropdownButtonState extends State<CustomDropdownButton> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),

      // style: const TextStyle(color: Colors.deepPurple),
      underline: Container(),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(color: BLACK),),
        );
      }).toList(),
    );
  }
}
