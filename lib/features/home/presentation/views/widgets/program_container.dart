import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/services/preference/preference_service.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider<PreferenceService>(
      create: (BuildContext context) => PreferenceService(),
      child: AnimatedBuilder(
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
                  bottomRight: (Provider.of<PreferenceService>(context)
                              .locale
                              .languageCode) ==
                          'en'
                      ? const Radius.circular(75)
                      : const Radius.circular(15),
                  bottomLeft: (Provider.of<PreferenceService>(context)
                              .locale
                              .languageCode) ==
                          'en'
                      ? const Radius.circular(15)
                      : const Radius.circular(75),
                ),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/img_1.png',
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 60,
                      left: 8,
                      right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        locale.goIsland,
                        style: TextStyles.textStyle16,
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
                            style: TextStyles.textStyle12
                                .copyWith(color: AppColors.davyGrey),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Row(
                    children: [
                      Text(
                        locale.startsFrom,
                        style: TextStyles.textStyle12
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      Text(
                        locale.personPrice,
                        style: TextStyles.textStyle14,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 12, bottom: 8),
                  child: Row(
                    children: [
                      Text(
                       locale.startsFrom,
                        style: TextStyles.textStyle12
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      Text(
                        locale.childPrice,
                        style: TextStyles.textStyle14,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
