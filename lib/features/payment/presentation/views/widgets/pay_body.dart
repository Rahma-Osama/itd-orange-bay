import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';

import '../../../../../constants.dart';
import '../../../../../core/shred_widgets/custom_button.dart';
import '../../../../../core/utilities/styles.dart';

class PayBody extends StatelessWidget {
  const PayBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(child: Image(image: AssetImage('assets/images/step3.png' ,)  )),
          ),
          Container(
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set the shadow color
                  spreadRadius: 2, // Set the spread radius of the shadow
                  blurRadius: 6, // Set the blur radius of the shadow
                  offset: const Offset(0, 3), // Set the offset of the shadow
                ),
              ],
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal:20,
                  vertical: MediaQuery.of(context).size.height/90
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: Image(image: AssetImage('assets/images/pngegg (81).png'))),
                  const SizedBox(height: 20,),
                  Text(
                      'Classic Program',
                    style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w700,color: Colors.black),
                  ),
                  const SizedBox(height: 5,),
                  const Text(
                      'Cancellation Deadline: 10/3/2023',
                    style: TextStyle(
                      color: Color(0xFFE20D0D),
                      fontSize: 13.37,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Date' , style: Styles.TextStyleNormal14,),
                      Text('2/3/2022 at 18:00' , style: Styles.TextStyleNormal14,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Adults x2' , style: Styles.TextStyleNormal14,),
                      Text('750 EGP', style: Styles.TextStyleNormal14,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Children x1' ,  style: Styles.TextStyleNormal14,),
                      Text('Free' , style: Styles.TextStyleNormal14,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    'Additional Services',
                    style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Boot X2',
                        style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                      ),
                      const SizedBox(width: 35),
                      Text(
                        '500 EGP',
                        style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                        ),
                        const SizedBox(width: 35),
                        Text(
                          '750 EGP',
                          style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CustomButton(
              width: double.infinity,
              backgroundColor: MAIN_ORANGE,
              text: 'Confirm',
              func: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeLayout()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: CustomButton(
              textColor: MAIN_ORANGE,
              backgroundColor: Colors.white,
              text: 'Back',
              func: (){
                Navigator.pop(context);
              },
              width:double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
