import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add a review",
                style: TextStyles.textStyle14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Be the first to review",
                  style: TextStyles.textStyle12.copyWith(color: AppColors.GREY),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.all(8),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("share your thoughts",
                        style: TextStyles.textStyle16
                            .copyWith(color: AppColors.GREY)),
                    Icon(
                      Icons.emoji_emotions_outlined,
                      color: AppColors.GREY,
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
                                                    color: AppColors.GREY),
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
                                    color: AppColors.MAIN_ORANGE,
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
                                "“The staff went above and beyond to ensure we had a comfortable stay and were kind enough to pack breakfast for us as we checked out really early in the morning. All little things, but truly unforgettable experience.”",
                                style: TextStyles.textStyle14.copyWith(
                                    color: AppColors.GREY,
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
                                        ? "Show less"
                                        : "Show more",
                                    style: TextStyles.textStyle12
                                        .copyWith(color: AppColors.MAIN_ORANGE),
                                  ),
                                  Icon(
                                    isMore[index].toString() == 'true'
                                        ? Icons.keyboard_arrow_up_outlined
                                        : Icons.keyboard_arrow_down_outlined,
                                    size: 16,
                                    color: AppColors.MAIN_ORANGE,
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
                                    .copyWith(color: AppColors.GREY),
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
