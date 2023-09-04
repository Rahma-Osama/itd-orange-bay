import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/program/presentation/views/book_view.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/programs.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/reviews.dart';

import '../../../../../constants.dart';
import '../../../../../core/shred_widgets/app_bar2.dart';
import '../../../../../core/shred_widgets/back_ground.dart';
import '../../../../../core/shred_widgets/custom_button.dart';
import '../../../../../core/shred_widgets/images.dart';
import '../../../../../core/utilities/styles.dart';
import '../../../../auth/presentation/views/login_view.dart';
import 'overview.dart';

class ProBody extends StatefulWidget {
  final String initialBackgroundImage;
  const ProBody({Key? key, required this.initialBackgroundImage}) : super(key: key);

  @override
  State<ProBody> createState() => _ProBodyState();
}

class _ProBodyState extends State<ProBody> {
  String selectedImage = ''; // Updated by SliderImg callback

  @override
  void initState() {
    super.initState();
    selectedImage = widget.initialBackgroundImage; // Initialize selectedImage with initial value
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              BackGround(imagePath: selectedImage),
              const AppBarButtom(),
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
                  'Go Island Program',
                  style: Styles.TextStyle18,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: MAIN_ORANGE,
                    ),
                    Text(
                      "4.7",
                      style:
                      Styles.TextStyle12.copyWith(color: MAIN_ORANGE),
                    ),
                    Text(
                      '(92)',
                      style: Styles.TextStyle12.copyWith(color: GREY),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 40, left: 16),
            height: MediaQuery.of(context).size.height / 20,
            decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
                            ? MAIN_ORANGE
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
              ? ProgramsDetails()
              : const Reviews(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: CustomButton(
              backgroundColor: MAIN_ORANGE,
              text: 'Book Now',
              func: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginView()));
              },
              width:double.infinity,
            ),
          ),

        ],
      ),
    );
  }
}
