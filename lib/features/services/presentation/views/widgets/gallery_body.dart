import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/services/presentation/views/gallery_all_view.dart';
import 'package:orange_bay_new/features/services/presentation/views/gallery_panoramic_view.dart';
import 'package:orange_bay_new/features/services/presentation/views/gallery_relax_view.dart';

class GalleryBody extends StatefulWidget {
  const GalleryBody({Key? key}) : super(key: key);

  @override
  State<GalleryBody> createState() => _GalleryBodyState();
}

class _GalleryBodyState extends State<GalleryBody> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 45,
                child: TabBar(
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      child: Text(
                        "Panoramic view",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Tab(
                      text: "Relax",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: TabBarView(
                    children: [
                      GalleryAllView(),
                      GalleryPanoramicView(),
                      GalleryRelaxView(),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

// Column(
// children: [
// Container(
// height: 60,
// padding: const EdgeInsets.all(8),
// child: ListView.builder(
// physics: const BouncingScrollPhysics(),
// itemCount: 3,
// scrollDirection: Axis.horizontal,
// itemBuilder: (context, index) => GestureDetector(
// onTap: () {
// setState(() {
// photoTypeIsselected = [false, false, false];
// photoTypeIsselected[index] = true;
// });
// },
// child: Container(
// decoration: BoxDecoration(
// borderRadius: photoTypeIsselected[index]
// ? BorderRadius.circular(10)
// : BorderRadius.circular(0),
// color: photoTypeIsselected[index]
// ? AppColors.deepOrange
//     : Colors.white,
// ),
// alignment: Alignment.center,
// width: size.width * .3,
// child: Text(
// photoType[index],
// style: TextStyle(
// color: photoTypeIsselected[index]
// ? Colors.white
//     : Colors.black),
// )),
// )),
// ),
// Expanded(
// child: GridView.builder(
// itemCount: photoTypeIsselected[0]?AssetsData.gallery.length : 5,
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// mainAxisSpacing: size.height / 40,
// crossAxisSpacing: size.height / 40,
// childAspectRatio: .9,
// crossAxisCount: 2,
// ),
// itemBuilder: (context, index) => Image.asset(
// AssetsData.gallery[photoTypeIsselected[0]?index :photoTypeIsselected[1]?index+4 : index],
// fit: BoxFit.cover,
// )),
// )
// ],
// ),
