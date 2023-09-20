import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/services/preference/preference_service.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';

class NotificationIconContainer extends StatelessWidget {
  const NotificationIconContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final preference = getPreferenceService(context, listen: false);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: AppColors.eerieBlack,
                )),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 8.0,
                  left: preference.isEn() ? 14 : 0,
                  right: preference.isEn() ? 0 : 14),
              child: Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: const Color(0XFFFF4747),
                    radius: size.height / 200,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
