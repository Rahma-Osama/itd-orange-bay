import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utils/date_time_formatter.dart';
import 'package:orange_bay_new/core/widgets/default_text.dart';

class PickDate2 extends StatefulWidget {
  const PickDate2({Key? key}) : super(key: key);

  @override
  State<PickDate2> createState() => _PickDate2State();
}

class _PickDate2State extends State<PickDate2> {
  final TextEditingController _fromDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 55,
      child: defaultText(
        readOnly: true,
        controller: _fromDateController,
        type: TextInputType.datetime,
        prefix: Icons.calendar_today_rounded,
        tap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2070),
          );
          if (pickedDate != null) {
            setState(() {
              _fromDateController.text = dateTimeFormatter(context, pickedDate);
            });
          }
        },
      ),
    );
  }
}
