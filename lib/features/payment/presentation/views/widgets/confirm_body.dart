import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/widgets/custom_button.dart';
import 'package:orange_bay_new/core/widgets/default_text.dart';
import 'package:orange_bay_new/features/payment/presentation/views/pay_view.dart';
import 'package:orange_bay_new/features/payment/presentation/views/widgets/check_button.dart';
import 'package:orange_bay_new/features/payment/presentation/views/widgets/pay_method.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';

class ConfirmBody extends StatelessWidget {
  const ConfirmBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(
                  child: Image(
                      image: AssetImage(
                'assets/images/step2.png',
              ))),
            ),
            Text(
              'Choose payment method',
              style: TextStyles.textStyle18,
            ),
            const PayMethod(),
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
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: MediaQuery.of(context).size.height / 90),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Credit Card',
                      style:
                          TextStyles.textStyle14.copyWith(color: Colors.black),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    defaultText(
                      type: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Name on card',
                      style:
                          TextStyles.textStyle14.copyWith(color: Colors.black),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    defaultText(
                      type: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expire date',
                                style: TextStyles.textStyle14
                                    .copyWith(color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 250,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CVV',
                                style: TextStyles.textStyle14
                                    .copyWith(color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 250,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText: 'CVV',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const CheckButton(
                      text: 'Save card for future payment',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomButton(
                width: double.infinity,
                backgroundColor: AppColors.MAIN_ORANGE,
                text: 'Confirm',
                func: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PayView()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: CustomButton(
                textColor: AppColors.MAIN_ORANGE,
                backgroundColor: Colors.white,
                text: 'Back',
                func: () {
                  Navigator.pop(context);
                },
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
