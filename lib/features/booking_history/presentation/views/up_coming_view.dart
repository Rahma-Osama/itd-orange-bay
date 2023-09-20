import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/container_body.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/upcoming_button.dart';

class UpcomingView extends StatelessWidget {
  const UpcomingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 3),
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
    );
  }
}
