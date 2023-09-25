import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/services/preference/preference_service.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';

class ProgramContainer extends StatelessWidget {
  final bool whishScreen;
  final AnimationController animationController;
  final Animation<double> animation;

  const ProgramContainer(
      {Key? key,
        this.whishScreen = false,
        required this.animationController,
        required this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    final preferenceService = getPreferenceService(context, listen: false);

    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform: Matrix4.translationValues(
                100 * (1.0 - animation.value), 0.0, 0.0),
            child: child,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          width: MediaQuery.of(context).size.width * .7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
                bottomRight: (preferenceService.locale.languageCode) == 'en'
                    ? const Radius.circular(75)
                    : const Radius.circular(15),
                bottomLeft: (preferenceService.locale.languageCode) == 'en'
                    ? const Radius.circular(15)
                    : const Radius.circular(75),
              ),
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/img_1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        locale.goIsland,
                        style: TextStyles.textStyle16,
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
                          style: TextStyles.textStyle12,
                        ),
                        Text(
                          '(92)',
                          style: TextStyles.textStyle12.copyWith(color: AppColors.davyGrey),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    child: Row(
                      children: [
                        Text(
                          "Starting from ",
                          style: TextStyles.textStyle12.copyWith(fontWeight: FontWeight.w400 , fontSize: 10),
                        ),
                        Text(
                          "1000 EGP per person",
                          style: TextStyles.textStyle14.copyWith(fontSize: 12),

                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          "Starting from ",
                          style: TextStyles.textStyle12.copyWith(fontWeight: FontWeight.w400,fontSize: 10),
                        ),
                        Text(
                          "700 EGP per child",
                          style: TextStyles.textStyle14.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}