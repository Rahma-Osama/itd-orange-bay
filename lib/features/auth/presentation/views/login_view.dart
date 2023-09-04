import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/auth/presentation/views/widgets/login_view_body.dart';

import '../../../../core/shred_widgets/app_bar.dart';



class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(context: context) ,
        body: const LogInBody(),
      ),
    );
  }
}
