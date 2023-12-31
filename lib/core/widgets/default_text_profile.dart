import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';

Widget defaultTextPro({
  TextEditingController? controller,
  required TextInputType type,
  Function(String)? onChange,
  FormFieldValidator? validate,
  String? label,
  String? hint,
  IconData? prefix,
  bool isObscure = false,
  IconData? suffix,
  Function()? pressed,
  Function()? tap,
  bool? enable,
}) =>
    TextFormField(
      onTap: tap,
      enabled: enable,
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        hintStyle: TextStyles.textStyleNormal14,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: pressed,
                icon: Icon(
                  suffix,
                  color: AppColors.deepOrange,
                ),
              )
            : null,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 2.0),
        ),
      ),
      keyboardType: type,
      onChanged: onChange,
      validator: validate,
    );
