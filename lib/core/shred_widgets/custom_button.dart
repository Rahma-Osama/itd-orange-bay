
import 'package:flutter/material.dart';

import '../utilities/styles.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {
        Key? key,
        required this.backgroundColor,
        this.textColor=Colors.white,
        this.borderRadius,
        required this.text,
        this.fontSized,
        required this.func,
         this.width,
        this.height=48,

      })
      : super(key: key);
  final double? width;
  final double? height;
  final Color backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final double? fontSized;
  final String text;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: func,
          style: ElevatedButton.styleFrom(
//            elevation: 0,
            backgroundColor: backgroundColor,
            padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular( 8,),
            ),
            // minimumSize: Size(150, 50),
          ),
          child: Text(
            text,
            style: Styles.TextStyle16.copyWith(
              color: textColor,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}