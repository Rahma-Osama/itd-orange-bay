import 'package:flutter/material.dart';

import 'back_ground.dart';
import 'list_images.dart';

class SliderImg extends StatefulWidget {
  final Function(String) onImageSelected;

  const SliderImg({Key? key, required this.onImageSelected}) : super(key: key);

  @override
  State<SliderImg> createState() => _SliderImgState();
}

class _SliderImgState extends State<SliderImg> {
  String selectedImage = 'assets/images/img_1.png';
  // bool showImages = true;
  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate the left position based on screen width
    double leftPosition = screenWidth >= 600 ? 225 : 20;

    // Calculate the top position based on screen width
    double topPosition = screenWidth >= 600 ? 300 : 180;
//150
    // Calculate the container width based on screen width
    double containerWidth = screenWidth >= 600 ? 400 : screenWidth - 40;

    // Calculate the container height based on screen width
    double containerHeight = screenWidth >= 600 ? 80 : 80;

    return Positioned(
      left: leftPosition,
      top: topPosition,
      child: Opacity(
        opacity: 0.60,
        child: Container(
          width: containerWidth,
          height: containerHeight,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Stack(
            children: [
              // BackGround(imagePath: selectedImage),
              ListImages(
                onImageTap: (imagePath) {
                  setState(() {
                    selectedImage = imagePath; // Update selected image path
                  });
                  widget.onImageSelected(imagePath); // Pass the selected image path to ProBody
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
