import 'package:flutter/material.dart';

import '../../../../../core/shred_widgets/default_text.dart';


class LogInEmail extends StatefulWidget {
  const LogInEmail({Key? key}) : super(key: key);

  @override
  State<LogInEmail> createState() => _LogInEmailState();
}
var emailController = TextEditingController();
class _LogInEmailState extends State<LogInEmail> {
  final Map< String , String > _authData = {
    'email' : '',
    'password' : '',
  };

  @override
  Widget build(BuildContext context) {
    return defaultText(
        onChange: (val){
          _authData['email'] = val;
        },
        controller: emailController,
        type: TextInputType.emailAddress,
        hint: 'Enter Your Email',
        validate: (val){
          if(val.isEmpty || !val.contains('@')){
            return 'Invalid email';
          } return null;
        },
    );
  }
}
