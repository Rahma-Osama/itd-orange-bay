import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';
import 'package:orange_bay_new/core/widgets/app_bar2.dart';
import 'package:orange_bay_new/core/widgets/back_ground.dart';
import 'package:orange_bay_new/core/widgets/custom_button.dart';
import 'package:orange_bay_new/core/widgets/slider_image.dart';
import 'package:orange_bay_new/features/auth/presentation/views/login_view.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/widgets/program_details.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/widgets/reviews.dart';

import 'overview.dart';

class ProBody extends StatefulWidget {
  final String initialBackgroundImage;

  const ProBody({Key? key, required this.initialBackgroundImage})
      : super(key: key);

  @override
  State<ProBody> createState() => _ProBodyState();
}

class _ProBodyState extends State<ProBody> {
  String selectedImage = ''; // Updated by SliderImg callback

  @override
  void initState() {
    super.initState();
    selectedImage = widget
        .initialBackgroundImage; // Initialize selectedImage with initial value
  }

  List<bool> programDetailsIsSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    List<String> programDetails = [
      locale.overview,
      locale.programs,
      locale.reviews
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Stack(
            children: [
              BackGround(imagePath: selectedImage),
              const AppBarButton(),
              SliderImg(
                onImageSelected: (imagePath) {
                  setState(() {
                    selectedImage = imagePath; // Update selected image path
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  locale.goIslandProg,
                  style: TextStyles.textStyle18,
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
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 40,
                left: 16,
                right: 16),
            height: MediaQuery.of(context).size.height / 20,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          programDetailsIsSelected = [false, false, false];
                          programDetailsIsSelected[index] = true;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: programDetailsIsSelected[index]
                                ? BorderRadius.circular(10)
                                : BorderRadius.circular(0),
                            color: programDetailsIsSelected[index]
                                ? AppColors.deepOrange
                                : Colors.white,
                          ),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * .3,
                          child: Text(
                            programDetails[index],
                            style: TextStyle(
                                color: programDetailsIsSelected[index]
                                    ? Colors.white
                                    : Colors.black),
                          )),
                    )),
          ),
          programDetailsIsSelected[0]
              ? const Overview()
              : programDetailsIsSelected[1]
                  ? const ProgramsDetails()
                  : const Reviews(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: CustomButton(
              backgroundColor: AppColors.deepOrange,
              text: locale.bookNow,
              func: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginView()));
              },
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
