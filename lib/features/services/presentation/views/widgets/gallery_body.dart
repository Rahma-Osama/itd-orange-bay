import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utilities/assets.dart';

import '../../../../../constants.dart';

class GalleryBody extends StatefulWidget {
  const GalleryBody({Key? key}) : super(key: key);

  @override
  State<GalleryBody> createState() => _GalleryBodyState();
}

class _GalleryBodyState extends State<GalleryBody> {
  @override
  Widget build(BuildContext context) {
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
                                ? MAIN_ORANGE
                                : Colors.white,
                          ),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * .3,
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
                itemCount: AssetData.gallery.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: MediaQuery.of(context).size.height / 40,
                  crossAxisSpacing: MediaQuery.of(context).size.height / 40,
                  childAspectRatio: .9,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => Container(
                      child: Image.asset(
                        AssetData.gallery[index],
                        fit: BoxFit.cover,
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
