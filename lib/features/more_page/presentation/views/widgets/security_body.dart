import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/shred_widgets/custom_button.dart';
import 'container_text.dart';

class SecurityBody extends StatefulWidget {
  const SecurityBody({Key? key}) : super(key: key);

  @override
  State<SecurityBody> createState() => _SecurityBodyState();
}

class _SecurityBodyState extends State<SecurityBody> {
  bool isPasswordVisible2 = false;
  bool isPasswordVisible3 = false;
  bool isPasswordVisible4 = false;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ContainerProfile(
            type: TextInputType.text,
            text: 'Current Password',
            suffix: isPasswordVisible2 ? Icons.visibility : Icons.visibility_off,
            pressed: () {
              setState(() {
                isPasswordVisible2 = !isPasswordVisible2;
              });
            },
            isObscure: !isPasswordVisible2,
          ),
          const Divider(),
          ContainerProfile(
            type: TextInputType.text,
            text: 'New Password',
            suffix: isPasswordVisible3 ? Icons.visibility : Icons.visibility_off,
            pressed: () {
              setState(() {
                isPasswordVisible3 = !isPasswordVisible3;
              });
            },
           isObscure: !isPasswordVisible3,
          ),
          ContainerProfile(
            type: TextInputType.text,
            text: 'Confirm Password',
            suffix: isPasswordVisible4 ? Icons.visibility : Icons.visibility_off,
            pressed: () {
              setState(() {
                isPasswordVisible4 = !isPasswordVisible4;
              });
            },
           isObscure: !isPasswordVisible4,
          ),


        ],
      ),
    );
  }
}
