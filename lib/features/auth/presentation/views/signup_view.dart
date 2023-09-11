import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/widgets/app_bar.dart';
import 'package:orange_bay_new/features/auth/presentation/views/widgets/sign_up_main.dart';

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
        appBar: customAppBar(context: context),
        body: const SignUPMain(),
      ),
    );
  }
}
