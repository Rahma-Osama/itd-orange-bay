import 'package:flutter/cupertino.dart';

Widget upcomingButton({
  required label,
  required bgcolor,
  required txtcolor,
  required borderColor,
  required context,
}){
  return Container(
    width: MediaQuery.of(context).size.width/5,
    height: MediaQuery.of(context).size.height/18,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: bgcolor,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color:borderColor )
    ),
    child: Text(label,style: TextStyle(color: txtcolor),),
  );
}