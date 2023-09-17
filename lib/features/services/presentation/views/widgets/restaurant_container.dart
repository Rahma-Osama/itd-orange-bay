import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/constants/assets_data.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';

class RestContainer extends StatelessWidget {
  final int index;

  const RestContainer({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Image.asset(
              AssetsData.restaurants[index],
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(
              margin: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Dolphin Restaurant',
                          style: TextStyles.textStyle16.copyWith(
                              color: AppColors.eerieBlack,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.deepOrange,
                          ),
                          Text(
                            "4.7",
                            style: TextStyles.textStyle12
                                .copyWith(color: AppColors.deepOrange),
                          ),
                          Text(
                            '(92)',
                            style: TextStyles.textStyle12
                                .copyWith(color: AppColors.spanishGray),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled,
                        color: AppColors.blue,
                      ),
                      const Text('12:00 PM'),
                      SizedBox(
                        width: size.width / 10,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: AppColors.blue,
                      ),
                      const Text('3:00 PM'),
                      SizedBox(
                        width: size.width / 10,
                      ),
                      Icon(
                        Icons.restaurant,
                        color: AppColors.deepOrange,
                      ),
                      const Text('3:00 PM'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Dolphin Restaurant is located on the ground floor to your right hand side once you enter the island. This restaurant consists of a buffet style dining experience. ",
                      style: TextStyles.textStyle12.copyWith(
                          color: AppColors.spanishGray,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Start for 150.66 EGP / Person",
                        style: TextStyle(
                            color: Color(0xFF333333),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
