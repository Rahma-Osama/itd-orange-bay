import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/shred_widgets/default_text.dart';

class PickTime extends StatefulWidget {
  const PickTime({Key? key}) : super(key: key);

  @override
  State<PickTime> createState() => _PickTimeState();
}

class _PickTimeState extends State<PickTime> {
  var timeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 350,
      height: 55,
      child: defaultText(
        controller: timeController,
        type: TextInputType.datetime,
        prefix: Icons.watch_later_outlined,
        tap: (){
          showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
          ).then((value){
            timeController.text = value!.format(context).toString();
            print(value?.format(context));
          });
        },
        validate: (value){
          if(value.isEmpty){
            return 'time must not be empty';
          }
          return null;
        },
      ),
    );
  }
}
