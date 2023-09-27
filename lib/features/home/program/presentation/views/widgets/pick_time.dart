import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utils/date_time_formatter.dart';
import 'package:orange_bay_new/core/widgets/default_text.dart';

class PickTime extends StatefulWidget {
  const PickTime({Key? key}) : super(key: key);

  @override
  State<PickTime> createState() => _PickTimeState();
}

class _PickTimeState extends State<PickTime> {
  var timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 55,
      child: defaultText(
        readOnly: true,
        controller: timeController,
        type: TextInputType.datetime,
        prefix: Icons.watch_later_outlined,
        tap: () {
          showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
          ).then((value) {
            timeController.text = dateTimeFormatter(context,DateTime(0,0 ,0, value!.hour, value!.minute),format: 'jm');
            debugPrint(value.format(context));
          });
        },
        validate: (value) {
          if (value.isEmpty) {
            return 'time must not be empty';
          }
          return null;
        },
      ),
    );
  }
}
