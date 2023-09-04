import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/auth/presentation/views/widgets/sign_up_main.dart';

import '../../../../core/shred_widgets/app_bar.dart';



class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(context: context) ,
        body: const SignUPMain(),
      ),
    );
  }
}
