import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/widgets/home_app_bar.dart';
import 'package:orange_bay_new/features/auth/presentation/views/widgets/forget_password_body.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: HomeAppBar(),
        body: ForgetPasswordBody(),
      ),
    );
  }
}
