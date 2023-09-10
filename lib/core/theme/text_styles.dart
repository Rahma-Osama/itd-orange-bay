import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';

class TextStyles {
  static TextStyle textStyle12 =
      TextStyle(color: AppColors.BLACK, fontSize: 12);
  static TextStyle textStyle14 = TextStyle(
      color: AppColors.BLACK, fontSize: 14, fontWeight: FontWeight.w700);
  static TextStyle textStyleNormal14 = TextStyle(
    color: AppColors.Grey,
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    height: 1,
  );
  static TextStyle textStyle16 = TextStyle(
    color: AppColors.MAIN_ORANGE,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
  );
  static TextStyle textStyle18 = TextStyle(
      color: AppColors.BLACK, fontSize: 18, fontWeight: FontWeight.w600);
  static TextStyle textStyle20 = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 1,
  );
}
