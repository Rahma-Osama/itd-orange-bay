import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';
import 'package:orange_bay_new/features/home/program/presentation/manager/book_services.dart';

class SummaryContainer extends StatelessWidget {
  const SummaryContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
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
              locale.summary,
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
                  '${locale.adult} * ${bookServices.adultCounter} ',
                  style: TextStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '${210* bookServices.adultCounter} ${locale.eg}',
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
                  '${locale.child} * ${bookServices.childCounter}',
                  style: TextStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 35),
                Text('${53.0 * bookServices.childCounter} ${locale.eg}',
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
                  '${locale.boat} * ${bookServices.boatCounter}',
                  style: TextStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 35),
                Text('${250.0 * bookServices.boatCounter} ${locale.eg}',
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
                  locale.total,
                  style: TextStyles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
                const SizedBox(width: 35),
                Text(
                  '${(210* bookServices.adultCounter)+(53.0 * bookServices.childCounter)+(250.0 * bookServices.boatCounter)} ${locale.eg}',
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
