import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
import 'package:orange_bay_new/features/services/presentation/views/gallery_view.dart';

class ListImages extends StatelessWidget {
  final Function(String) onImageTap;
  const ListImages({Key? key, required this.onImageTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         GestureDetector(
           onTap: (){
             onImageTap('assets/images/IMG_6451.jpg');
           },
             child: const Image(image: AssetImage('assets/images/img5.png'))),
          GestureDetector(
              onTap: (){
                onImageTap('assets/images/IMG_6479.jpg');
              },
              child: const Image(image: AssetImage('assets/images/IMG_6479.jpg'))),
          GestureDetector(
              onTap: (){
                onImageTap('assets/images/gallery/img.png');
              },
              child: const Image(image: AssetImage('assets/images/gallery/img.png'))),
          GestureDetector(
              onTap: (){
                onImageTap('assets/images/gallery/img_3.png');
              },
              child: const Image (image: AssetImage('assets/images/gallery/img_3.png'))),
          GestureDetector(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const GalleryView())),
            child: Container(
              width: 62,
              height: 64,
              decoration: ShapeDecoration(
                color: const Color(0xFF0F4966),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    '+12',
                    style: Styles.TextStyle20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
