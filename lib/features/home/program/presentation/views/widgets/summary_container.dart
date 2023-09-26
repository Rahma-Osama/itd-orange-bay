import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';
import 'package:orange_bay_new/features/home/program/presentation/manager/book_services.dart';

class SummaryContainer extends StatelessWidget {
  const SummaryContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookServices = getBookServices(context);
    final size =MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 10, vertical: size.height / 50),
      child: Container(
        padding: const EdgeInsets.all(16),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Summary',
              style: TextStyles.textStyle16
                  .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Adult x ${bookServices.adultCounter}',
                  style: TextStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '${210* bookServices.adultCounter} EGP',
                  style: TextStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Children x ${bookServices.childCounter}',
                  style: TextStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 35),
                Text('${53.0 * bookServices.childCounter} EGP',
                    style: TextStyles.textStyle14.copyWith(
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Boat x ${bookServices.boatCounter}',
                  style: TextStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 35),
                Text('${250.0 * bookServices.boatCounter} EGP',
                    style: TextStyles.textStyle14.copyWith(
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
                const SizedBox(width: 35),
                Text(
                  '${(210* bookServices.adultCounter)+(53.0 * bookServices.childCounter)+(250.0 * bookServices.boatCounter)} EGP',
                  style: TextStyles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
