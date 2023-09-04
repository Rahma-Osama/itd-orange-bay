import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilities/assets.dart';
import '../../../../../core/utilities/styles.dart';
class RestContainer extends StatelessWidget {
  final index;
  const RestContainer({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        // margin: EdgeInsets.all(8),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        height: MediaQuery.of(context).size.height*.45,
        child: Column(
          children: [
            Image.asset(AssetData.restaurants[index],fit: BoxFit.cover,width: double.infinity,),
            Container(
              margin: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Dolphin Restaurant',
                          style: Styles.TextStyle16.copyWith(color: BLACK,fontWeight: FontWeight.w700),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: MAIN_ORANGE,
                          ),
                          Text(
                            "4.7",
                            style:
                            Styles.TextStyle12.copyWith(color: MAIN_ORANGE),
                          ),
                          Text(
                            '(92)',
                            style: Styles.TextStyle12.copyWith(color: GREY),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_filled,color: Blue,),
                      const Text('12:00 PM'),
                      SizedBox(width: MediaQuery.of(context).size.width/10,),
                      Icon(Icons.arrow_forward,color: Blue,),
                      const Text('3:00 PM'),
                      SizedBox(width: MediaQuery.of(context).size.width/10,),
                      Icon(Icons.restaurant,color: MAIN_ORANGE,),
                      const Text('3:00 PM'),

                    ],
                  ),
                  Padding(

                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Dolphin Resturant is located on the ground floor to your right hand side once you enter the island. This restaurant consists of a buffet style dining experience. ",
                      style: Styles.TextStyle12.copyWith(color: GREY,fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Start for 150.66 EGP / Person",style: TextStyle(
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),),
                      Text("[Map]",style: Styles.TextStyle14.copyWith(color: const Color(0XFF007489),fontWeight: FontWeight.w400,))
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
