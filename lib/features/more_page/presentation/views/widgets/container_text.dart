import 'package:flutter/material.dart';

import '../../../../../core/shred_widgets/profile_text.dart';

class ContainerProfile extends StatelessWidget {
  final String text;
  final TextInputType type;
  final IconData? suffix;
  final Function()? pressed;
  final bool? isObscure;
    const ContainerProfile({Key? key, required this.text, required this.type, this.suffix, this.pressed, this.isObscure  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: defaultTextPro(
          type: type,
          hint: text,
          suffix: suffix,
          pressed: pressed,
          isObscure: isObscure ?? false,
        ),
      ),
    );
  }
}
