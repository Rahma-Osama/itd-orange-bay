import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/widgets/default_text.dart';

class LogInPass extends StatelessWidget {
  const LogInPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> authData = {
      'email': '',
      'password': '',
    };
    final passwordController = TextEditingController();

    return defaultText(
      isObscure: true,
      onChange: (val) {
        authData['password'] = val;
      },
      controller: passwordController,
      type: TextInputType.text,
      label: 'Enter Your Password',
      validate: (val) {
        if (val.isEmpty || val.length < 5) {
          return 'Password is too short';
        }
        return null;
      },
    );
  }
}
