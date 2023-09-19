import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
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
    return DefaultTabController(
      length: 3,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 45,
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: AppColors.deepOrange,
                  indicatorColor: Colors.orange,
                  tabs: const [
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
              const Expanded(
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
