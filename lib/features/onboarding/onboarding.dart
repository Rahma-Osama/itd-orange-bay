import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';
class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/img_8.png',width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
          // Text("Let's Explore"),
          // Text("Beauty",style: TextStyle(
          //   fontFamily: 'SF UI Display'
          // ),),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height/10),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Explore\n",
                      style: TextStyle(
                        // color: ColorConstant.bluegray900,
                        fontSize: 38,
                        fontFamily: 'SF UI Display',
                        fontWeight: FontWeight.w300,
                        height: 1.32,
                      ),
                    ),
                    const TextSpan(
                      text: "The Beautiful\n",
                      style: TextStyle(
                        // color: ColorConstant.gray900,
                        fontSize: 38,
                        fontFamily: 'SF UI Display',
                        fontWeight: FontWeight.w700,
                        height: 1.32,
                      ),
                    ),
                    TextSpan(
                      text: "With Us",
                      style: TextStyle(
                        // color: ColorConstant.gray900,
                        fontSize: 38,
                        fontFamily: 'SF UI Display',
                        fontWeight: FontWeight.w600,
                        color: MAIN_ORANGE,
                        height: 1.32,
                      ),
                    ),
                    // TextSpan(
                    //   text: "lbl_world",
                    //   style: TextStyle(
                    //     //   color: ColorConstant.deepOrangeA200,
                    //     //   fontSize: getFontSize(
                    //     //     38,
                    //     //   ),
                    //     fontFamily: 'SF UI Display',
                    //     fontWeight: FontWeight.w600,
                    //     height: 1.32,
                    //   ),
                    // ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),

          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height/4,right: MediaQuery.of(context).size.width/4),

                  child:GestureDetector(
                    onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeLayout())),
                    child: Container(decoration: BoxDecoration(color: MAIN_ORANGE,borderRadius: BorderRadius.circular(40)),
                      child: const Icon(Icons.keyboard_arrow_right_outlined,color: Colors.white,size: 30,),
                    ),
                  )
              ))
        ],
      ),
    );
  }
}