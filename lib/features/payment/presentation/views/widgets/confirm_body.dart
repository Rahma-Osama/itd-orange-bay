import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/features/payment/presentation/views/pay_view.dart';
import 'package:orange_bay_new/features/payment/presentation/views/widgets/pay_method.dart';

import '../../../../../core/shred_widgets/custom_button.dart';
import '../../../../../core/shred_widgets/default_text.dart';
import '../../../../../core/utilities/styles.dart';
import 'check_buttom.dart';

class ConfirmBody extends StatelessWidget {
  const ConfirmBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(child: Image(image: AssetImage('assets/images/step2.png' ,)  )),
            ),
            Text('Choose payment method' , style: Styles.TextStyle18,),
            const PayMethod(),
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
                   Text(
                     'Credit Card',
                     style: Styles.TextStyle14.copyWith(color: Colors.black),
                   ),
                   const SizedBox(height: 8,),
                   defaultText(
                     type: TextInputType.text,
                   ),
                   const SizedBox(height: 8,),

                   Text(
                     'Name on card',
                     style: Styles.TextStyle14.copyWith(color: Colors.black),
                   ),
                   const SizedBox(height: 8,),
                   defaultText(
                     type: TextInputType.text,
                   ),
                   const SizedBox(height: 8,),
                   Row(
                     children: [
                       Expanded(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               'Expire date',
                               style: Styles.TextStyle14.copyWith(color: Colors.black),
                             ),
                             const SizedBox(height: 5,),
                             SizedBox(
                               width: 250,
                               child: TextField(
                                 decoration:  InputDecoration(
                                   border:  OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       const SizedBox(width: 16),
                       Expanded(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               'CVV',
                               style: Styles.TextStyle14.copyWith(color: Colors.black),
                             ),
                             const SizedBox(height: 5,),
                             SizedBox(
                               width: 250,
                               child: TextField(
                                 decoration:  InputDecoration(
                                   border:  OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                   ),
                                   hintText: 'CVV',
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),

                   const SizedBox(height: 14,),
                   const CheckButtom(
                     text: 'Save card for future payment',
                   ),
                 ],
               ),
             ),
           ),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomButton(
                  width: double.infinity,
                  backgroundColor: MAIN_ORANGE,
                  text: 'Confirm',
                  func: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const PayView()));
                  },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
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
      ),
    );
  }
}
