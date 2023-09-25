import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/container_body.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/upcoming_button.dart';

class UpcomingBody extends StatelessWidget {
  const UpcomingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set the shadow color
                  spreadRadius: 2, // Set the spread radius of the shadow
                  blurRadius: 6, // Set the blur radius of the shadow
                  offset: const Offset(0, 3), // Set the offset of the shadow
                ),
              ],
            ),
            child: Column(
              children: [
                const ContainerBody(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      upcomingButton(
                          label: "Edit",
                          bgcolor: AppColors.deepOrange,
                          borderColor: AppColors.deepOrange,
                          txtcolor: Colors.white,
                          context: context),
                      upcomingButton(
                          label: "Print",
                          bgcolor: Colors.white,
                          borderColor: AppColors.deepOrange,
                          txtcolor: AppColors.deepOrange,
                          context: context),
                      upcomingButton(
                          label: "Cancel",
                          bgcolor: const Color(0xFFE72C2C),
                          borderColor: const Color(0xFFE72C2C),
                          txtcolor: Colors.white,
                          context: context),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 3,
                vertical: MediaQuery.of(context).size.height / 50),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Set the shadow color
                    spreadRadius: 2, // Set the spread radius of the shadow
                    blurRadius: 6, // Set the blur radius of the shadow
                    offset: const Offset(0, 3), // Set the offset of the shadow
                  ),
                ],
              ),
              child: Column(
              children: [
                const ContainerBody(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      upcomingButton(
                          label: "Edit",
                          bgcolor: AppColors.deepOrange,
                          borderColor: AppColors.deepOrange,
                          txtcolor: Colors.white,
                          context: context),
                      upcomingButton(
                          label: "Print",
                          bgcolor: Colors.white,
                          borderColor: AppColors.deepOrange,
                          txtcolor: AppColors.deepOrange,
                          context: context),
                      upcomingButton(
                          label: "Cancel",
                          bgcolor: const Color(0xFFE72C2C),
                          borderColor: const Color(0xFFE72C2C),
                          txtcolor: Colors.white,
                          context: context),
                    ],
                  ),
                ),
              ],
            ),
            ),
          ),
        ],
      ),
    );
  }
}
