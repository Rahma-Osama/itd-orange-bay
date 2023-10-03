

import 'package:flutter/material.dart';
import 'list_images.dart';

class SliderImg extends StatefulWidget {
  final Function(String) onImageSelected;

  const SliderImg({Key? key, required this.onImageSelected}) : super(key: key);

  @override
  State<SliderImg> createState() => _SliderImgState();
}

class _SliderImgState extends State<SliderImg> {
  String selectedImage = 'assets/images/img_1.png';
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    double containerWidth = screenWidth >= 600 ? 400 : screenWidth - 40;
    double containerHeight = screenWidth >= 600 ? 80 : 80;

    return Positioned(
      left: size.width*.08,
      right: size.width*.08, 
      bottom: 10,
      child: Opacity(
        opacity: 0.60,
        child: Container(
          width: containerWidth,
          height: containerHeight,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Stack(
            children: [
              ListImages(
                onImageTap: (imagePath) {
                  setState(() {
                    selectedImage = imagePath; // Update selected image path
                  });
                  widget.onImageSelected(
                      imagePath); // Pass the selected image path to ProBody
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
