import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/widgets/custom_button.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/widgets/second_container.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/widgets/summary_container.dart';
import 'package:orange_bay_new/features/payment/presentation/views/user_view.dart';

class BookBody extends StatefulWidget {
  const BookBody({Key? key}) : super(key: key);

  @override
  State<BookBody> createState() => _BookBodyState();
}

class _BookBodyState extends State<BookBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SecondContainer(),
          const SummaryContainer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
              backgroundColor: AppColors.MAIN_ORANGE,
              text: 'Pay Now',
              func: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UserView()));
              },
              width: MediaQuery.of(context).size.width * .48,
            ),
          ),
        ],
      ),
    );
  }
}