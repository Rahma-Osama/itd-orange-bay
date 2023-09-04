import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:orange_bay_new/constants.dart';
class PickDate extends StatefulWidget {
  const PickDate({Key? key}) : super(key: key);

  @override
  State<PickDate> createState() => _PickDateState();
}

class _PickDateState extends State<PickDate> {
  TextEditingController _fromDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 15),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: TextField(
            controller: _fromDateController,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2070),
              );
              if (pickedDate != null) {
                setState(() {
                  _fromDateController.text =
                      DateFormat('yyyy/MM/dd').format(pickedDate);
                });
              }
            },
            decoration:  InputDecoration(
              hintText: 'when would you come?',

              prefixIcon: const Icon(Icons.calendar_today_rounded),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MAIN_ORANGE),
              ),
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 0, horizontal: 16),

            ),
          ),
        ),
      ),
    );

  }
}
