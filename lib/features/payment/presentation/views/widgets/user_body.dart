import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
import 'package:orange_bay_new/features/auth/presentation/views/widgets/login_text.dart';
import 'package:orange_bay_new/features/payment/presentation/views/confirm_view.dart';


import '../../../../../constants.dart';
import '../../../../../core/shred_widgets/custom_button.dart';
import '../../../../../core/shred_widgets/default_text.dart';
import 'check_buttom.dart';

class UserBody extends StatefulWidget {
  const UserBody({Key? key}) : super(key: key);

  @override
  State<UserBody> createState() => _UserBodyState();
}

class _UserBodyState extends State<UserBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Image(image: AssetImage('assets/images/step1.png' ,) ),
            ),
            // StepperScreen(),
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
                        'Add user data',
                      style: Styles.TextStyle18,
                    ),
                    const SizedBox(height: 12,),
                    Text(
                      'Email Address',
                      style: Styles.TextStyle14.copyWith(color: Colors.black),
                    ),
                    const SizedBox(height: 8,),
                    const LogInEmail(),
                    const SizedBox(height: 15,),
                    Text(
                      'Full Name',
                      style: Styles.TextStyle14.copyWith(color: Colors.black),
                    ),
                    const SizedBox(height: 8,),
                defaultText(
                  type: TextInputType.text,
                  hint: 'Enter Your full name',
                ),
                    const SizedBox(height: 15,),
                    Text(
                      'Phone Number',
                      style: Styles.TextStyle14.copyWith(color: Colors.black),
                    ),
                    const SizedBox(height: 8,),
                    defaultText(
                      type: TextInputType.phone,
                      hint: 'Enter Your phone',
                    ),
                    const SizedBox(height: 15,),
                    Text(
                      'Your Request',
                      style: Styles.TextStyle14.copyWith(color: Colors.black),
                    ),
                    const SizedBox(height: 8,),
                    defaultText(
                      type: TextInputType.text,
                      hint: 'Enter Your request',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: Styles.TextStyle20.copyWith(color: Colors.black),
                ),
                Text(
                  '2,550 EGP',
                  style: Styles.TextStyle20.copyWith(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 24,),
            const CheckButtom(
              text: 'I Accept Terms And Conditions and Cancellation policy \n Read Terms and conditions',
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: CustomButton(
                backgroundColor: MAIN_ORANGE,
                text: 'Pay',
                func: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ConfirmView()));
                },
                width:double.infinity,
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
      ),

    );
  }
}
