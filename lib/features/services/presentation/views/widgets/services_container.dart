import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utilities/assets.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
import 'package:orange_bay_new/features/services/presentation/views/activity_view.dart';
import 'package:orange_bay_new/features/services/presentation/views/memberships_view.dart';
import 'package:orange_bay_new/features/services/presentation/views/restaurant_layout.dart';
import 'package:orange_bay_new/features/services/presentation/views/videos_view.dart';

import '../../../../../constants.dart';
import '../gallery_view.dart';
import '../shops_view.dart';
class ServiceContainer extends StatelessWidget {
   ServiceContainer({Key? key,required this.index}) : super(key: key);
final index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>screens[index])),
      child: Container(

        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)  ,
          color: Colors.white
        ),
        // height: MediaQuery.of(context).size.height/3,
        child: Column(
          children: [
            Expanded(child: Image.asset(AssetData.services[index])),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height/160),
              child: Text(servicesHeaders[index],style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w500),),
            ),
            Text(servicesData[index],style: Styles.TextStyle12.copyWith(fontWeight: FontWeight.w400,color: GREY),)
          ],
        ),
      ),
    );
  }

  List servicesHeaders=['Restaurants','Activities','Videos','Photos'];
   // List servicesHeaders=['Restaurants','Activities','Videos','Photos','Memberships','Shops'];
  List servicesData=['12 Restaurants','8 Activities','10 Videos','40 Photos'];
   // List servicesData=['12 Restaurants','8 Activities','10 Videos','40 Photos','6 Memberships','35 Shops'];
  List screens=[
    const RestLayout(),
    const ActivityView(),
    const VideosView(),
    const GalleryView(),
    // const MemberShipView(),
    // const shopView()

  ];

}
