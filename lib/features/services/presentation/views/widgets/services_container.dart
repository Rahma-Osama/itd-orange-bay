import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/constants/assets_data.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';
import 'package:orange_bay_new/features/services/presentation/views/activity_view.dart';
import 'package:orange_bay_new/features/services/presentation/views/restaurant_view.dart';
import 'package:orange_bay_new/features/services/presentation/views/videos_view.dart';
import 'package:orange_bay_new/features/services/presentation/views/gallery_view.dart';

class ServicesContainer extends StatelessWidget {
  ServicesContainer({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => screens[index])),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        // height: MediaQuery.of(context).size.height/3,
        child: Column(
          children: [
            Expanded(child: Image.asset(AssetsData.services[index])),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height / 160),
              child: Text(
                servicesHeaders[index],
                style: TextStyles.textStyle14
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              servicesData[index],
              style: TextStyles.textStyle12
                  .copyWith(fontWeight: FontWeight.w400, color: AppColors.GREY),
            )
          ],
        ),
      ),
    );
  }

  final List servicesHeaders = [
    'Restaurants',
    'Activities',
    'Videos',
    'Photos'
  ];
  final List servicesData = [
    '12 Restaurants',
    '8 Activities',
    '10 Videos',
    '40 Photos'
  ];
  final List screens = [
    const RestView(),
    const ActivityView(),
    const VideosView(),
    const GalleryView(),
    // const MemberShipView(),
    // const shopView()
  ];
}
