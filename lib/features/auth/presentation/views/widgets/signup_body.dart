import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/widgets/default_text.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

enum AuthMode { login, signUp }

class _SignUpBodyState extends State<SignUpBody> {
  final AuthMode _authMode = AuthMode.login;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          defaultText(
            enable: _authMode == AuthMode.signUp,
            isObscure: true,
            type: TextInputType.phone,
            label: 'Enter Your Full Name',
            validate: (val) {
              if (val.isEmpty) {
                return 'Please Enter Your Full Name';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          defaultText(
            enable: _authMode == AuthMode.signUp,
            isObscure: true,
            type: TextInputType.phone,
            label: 'Enter Your number',
            validate: (val) {
              if (val.isEmpty) {
                return 'Please Enter Your Phone';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          defaultText(
            enable: _authMode == AuthMode.signUp,
            isObscure: true,
            type: TextInputType.phone,
            label: 'Add Your Address',
            validate: (val) {
              if (val.isEmpty) {
                return 'Please Enter Your address';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
