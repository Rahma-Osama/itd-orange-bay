import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
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
    final locale = getL10n(context);
    return DefaultTabController(
      length: 3,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: AppColors.deepOrange,
                indicatorColor: Colors.orange,
                isScrollable: true,
                tabs: [
                  Tab(text: locale.all),
                  Tab(text: locale.panoramicView),
                  Tab(text: locale.relax),
                ],
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
