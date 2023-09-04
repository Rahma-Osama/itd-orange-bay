import 'package:flutter/material.dart';

import '../../../../../core/shred_widgets/default_text.dart';



class LogInPass extends StatelessWidget {

   LogInPass({Key? key}) : super(key: key);

  final Map< String , String > _authData = {
    'email' : '',
    'password' : '',
  };
   var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  defaultText(
      isObscure: true,
      onChange: (val){
        _authData['password'] = val;
      },
      controller: passwordController,
      type: TextInputType.text,
      label: 'Enter Your Password',
      validate: (val){
        if(val.isEmpty || val.length < 5){
          return 'Password is too short';
        }
        return null;
      },
    );
  }
}
