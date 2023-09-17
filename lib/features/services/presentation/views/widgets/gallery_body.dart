import 'package:flutter/material.dart';

import 'package:orange_bay_new/data/constants.dart';
import 'package:orange_bay_new/core/constants/assets_data.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';

class GalleryBody extends StatefulWidget {
  const GalleryBody({Key? key}) : super(key: key);

  @override
  State<GalleryBody> createState() => _GalleryBodyState();
}

class _GalleryBodyState extends State<GalleryBody> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            padding: const EdgeInsets.all(8),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          photoTypeIsselected = [false, false, false];
                          photoTypeIsselected[index] = true;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: photoTypeIsselected[index]
                                ? BorderRadius.circular(10)
                                : BorderRadius.circular(0),
                            color: photoTypeIsselected[index]
                                ? AppColors.deepOrange
                                : Colors.white,
                          ),
                          alignment: Alignment.center,
                          width: size.width * .3,
                          child: Text(
                            photoType[index],
                            style: TextStyle(
                                color: photoTypeIsselected[index]
                                    ? Colors.white
                                    : Colors.black),
                          )),
                    )),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: photoTypeIsselected[0]?AssetsData.gallery.length : 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: size.height / 40,
                  crossAxisSpacing: size.height / 40,
                  childAspectRatio: .9,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => Image.asset(
                      AssetsData.gallery[photoTypeIsselected[0]?index :photoTypeIsselected[1]?index+4 : index],
                      fit: BoxFit.cover,
                    )),
          )
        ],
      ),
    );
  }
}
