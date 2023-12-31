import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';

class PayMethod extends StatelessWidget {
  const PayMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.deepOrange,
                width: 1,
              ),
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.elliptical(5, 5)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set the shadow color
                  spreadRadius: 2, // Set the spread radius of the shadow
                  blurRadius: 6, // Set the blur radius of the shadow
                  offset: const Offset(0, 3), // Set the offset of the shadow
                ),
              ],
            ),
            child: const Image(
              image: AssetImage('assets/images/pngegg (59).png'),
            ),
          ),
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.elliptical(3, 3)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set the shadow color
                  spreadRadius: 2, // Set the spread radius of the shadow
                  blurRadius: 6, // Set the blur radius of the shadow
                  offset: const Offset(0, 3), // Set the offset of the shadow
                ),
              ],
            ),
            child: const Image(
              image: AssetImage('assets/images/pngegg (60).png'),
              width: 69,
              height: 69,
            ),
          ),
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.elliptical(3, 3)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set the shadow color
                  spreadRadius: 2, // Set the spread radius of the shadow
                  blurRadius: 6, // Set the blur radius of the shadow
                  offset: const Offset(0, 3), // Set the offset of the shadow
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Cash',
                style: TextStyles.textStyle16.copyWith(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
