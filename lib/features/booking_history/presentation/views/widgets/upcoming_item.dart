import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';
import 'package:orange_bay_new/core/utils/number_locale.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/upcoming_button.dart';

class UpcomingItem extends StatelessWidget {
  const UpcomingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    final priceNumber = numberLocale(context, 100);
    final List buttonData = [
      [locale.edit, AppColors.deepOrange, AppColors.deepOrange, Colors.white],
      [locale.print, Colors.white, AppColors.deepOrange, AppColors.deepOrange],
      [
        locale.cancel,
        const Color(0xFFE72C2C),
        const Color(0xFFE72C2C),
        Colors.white
      ]
    ];
    return Column(
      children: [
        Column(
          children: [
            const Image(
              image: AssetImage('assets/images/book.png'),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Classic Program',
                    style: TextStyles.textStyle16.copyWith(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Cancellation Deadline: 10/3/2022',
                    style: TextStyle(
                      color: Color(0xFFE20D0D),
                      fontSize: 13.37,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date',
                        style: TextStyles.textStyleNormal14,
                      ),
                      Text(
                        '2/3/2022 at 18:00',
                        style: TextStyles.textStyleNormal14,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Adult x2',
                    style: TextStyles.textStyleNormal14,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Children x1',
                    style: TextStyles.textStyleNormal14,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Program Status',
                        style: TextStyles.textStyleNormal14,
                      ),
                      const SizedBox(width: 35),
                      Text(
                        'Paid',
                        style: TextStyles.textStyleNormal14.copyWith(
                          color: const Color(0xFFCF0F0F),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          locale.total,
                          style: TextStyles.textStyle16.copyWith(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        const SizedBox(width: 35),
                        Text(
                          '$priceNumber ${locale.eg}',
                          style: TextStyles.textStyle16.copyWith(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              child: Center(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => upcomingButton(
                      label: buttonData[index][0],
                      bgcolor: buttonData[index][1],
                      borderColor: buttonData[index][2],
                      txtcolor: buttonData[index][3],
                      context: context),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: MediaQuery.of(context).size.width / 12,
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
