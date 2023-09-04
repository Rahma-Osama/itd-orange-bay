import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';

class SummaryContainer extends StatelessWidget {
  const SummaryContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:20,
          vertical: MediaQuery.of(context).size.height/50
      ),
      child: Container(
        height: MediaQuery.of(context).size.height *.25,
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
              style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Adult x2',
                  style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400,),
                ),
                Text(
                  '750 EGP',
                  style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400,),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Text(
                    'Children x1',
                      style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400,),
                  ),
                  const SizedBox(width: 35),
                  Text(
                    'Free',style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400,)
                  ),
                ],
            ),
            const SizedBox(height: 5,),
            const Divider(),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                ),
                const SizedBox(width: 35),
                Text(
                  '750 EGP',
                  style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
