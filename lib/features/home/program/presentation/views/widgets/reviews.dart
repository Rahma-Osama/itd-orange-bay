import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';

class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  List<bool> isMore = [false, false, false];

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                locale.addReview,
                style: TextStyles.textStyle14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  locale.firstToReview,
                  style: TextStyles.textStyle12
                      .copyWith(color: AppColors.spanishGray),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.all(8),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(locale.shareThoughts,
                        style: TextStyles.textStyle16
                            .copyWith(color: AppColors.spanishGray)),
                    Icon(
                      Icons.emoji_emotions_outlined,
                      color: AppColors.spanishGray,
                    )
                  ],
                ),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: CircleAvatar(
                                        backgroundImage: const AssetImage(
                                            'assets/images/img_5.png'),
                                        radius:
                                            MediaQuery.of(context).size.width /
                                                15,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Samantha Payne",
                                          style: TextStyles.textStyle14,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: Text(
                                            "@Sam.Payne90",
                                            style: TextStyles.textStyle12
                                                .copyWith(
                                                    color:
                                                        AppColors.spanishGray),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                RatingBarIndicator(
                                  unratedColor: Colors.grey[300],
                                  rating: 4.5,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: AppColors.deepOrange,
                                  ),
                                  itemCount: 5,
                                  itemSize:
                                      MediaQuery.of(context).size.width / 15,
                                  direction: Axis.horizontal,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                locale.reviewDescription,
                                style: TextStyles.textStyle14.copyWith(
                                    color: AppColors.spanishGray,
                                    fontWeight: FontWeight.w400),
                                maxLines:
                                    isMore[index].toString() == 'true' ? 10 : 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isMore[index] = !isMore[index];
                                });
                              },
                              child: Row(
                                children: [
                                  Text(
                                    isMore[index].toString() == 'true'
                                        ? locale.showLess
                                        : locale.showMore,
                                    style: TextStyles.textStyle12
                                        .copyWith(color: AppColors.deepOrange),
                                  ),
                                  Icon(
                                    isMore[index].toString() == 'true'
                                        ? Icons.keyboard_arrow_up_outlined
                                        : Icons.keyboard_arrow_down_outlined,
                                    size: 16,
                                    color: AppColors.deepOrange,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "23 Nov 2022",
                                style: TextStyles.textStyle12
                                    .copyWith(color: AppColors.spanishGray),
                              ),
                            )
                          ],
                        ),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
