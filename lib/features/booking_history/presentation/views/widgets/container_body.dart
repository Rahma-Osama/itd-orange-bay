import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';

import 'package:orange_bay_new/core/theme/text_styles.dart';
import 'package:orange_bay_new/core/utils/number_locale.dart';

class ContainerBody extends StatelessWidget {
  const ContainerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    final priceNumber = numberLocale(context, 750);
    return SingleChildScrollView(
      child: Column(
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
    );
  }
}
