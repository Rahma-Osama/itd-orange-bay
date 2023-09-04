import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';


import '../../../../../constants.dart';

import '../../../../program/presentation/views/book_view.dart';
import 'log_in.dart';
import 'log_in_pass.dart';
import 'login_text.dart';

class AuthCard extends StatefulWidget {
  const AuthCard({Key? key}) : super(key: key);

  @override
  State<AuthCard> createState() => _AuthCardState();
}

enum AuthMode {
  Login , Signup
}

class _AuthCardState extends State<AuthCard> with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey();
 AuthMode _authMode = AuthMode.Login;
 Map< String , String > _authData = {
   'email' : '',
   'password' : '',
 };

 var _isLoading = false;

  late AnimationController _controller;
 late Animation<Offset> _slideAnimation;
 late Animation<double> _opacityAnimation;

 @override
  void initState(){
   super.initState();
   _controller = AnimationController(vsync: this , duration: const Duration(milliseconds: 300,),
   );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -0.15),
      end: const Offset(0, 0),
    ).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Curves.fastOutSlowIn,
        ));
   _opacityAnimation = Tween<double>(
     begin: 0.0,
     end: 1.0,
   ).animate(
       CurvedAnimation(
         parent: _controller,
         curve: Curves.easeIn,
       ));
  }
  @override
  void dispose(){
   super.dispose();
   _controller.dispose();
  }
  Future<void> submit () async {
   if(!_formKey.currentState!.validate()){
     return;
   }
   setState(() {
     _isLoading = true;
   });
   try{
     Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => const BookView()), // Replace NewPage with the desired destination page
     );
   } catch(error){

   }
   setState(() {
     _isLoading = false;
   });
  }
  void _switchAuthMode(){
   if(_authMode == AuthMode.Login){
     setState(() {
       _authMode = AuthMode.Signup;
     });
     _controller.forward();
   } else {
     setState(() {
       _authMode = AuthMode.Login;
     });
     _controller.reverse();
   }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 8.0,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
        height: 500,
        // height: _authMode == AuthMode.Signup ? 400 : 260,
        // constraints: BoxConstraints(
        //   maxHeight: _authMode == AuthMode.Signup ? 400 : 260
        width: deviceSize.width*.85,
        // padding: EdgeInsets.all(30),
        child: const LoginScreen(),

        // child: Form(
        //   key: _formKey,
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         LogInEmail(),
        //         SizedBox(height: 20,),
        //         LogInPass(),
        //         SizedBox(height: 20,),
        //         AnimatedContainer(
        //           constraints: BoxConstraints(
        //             maxHeight: _authMode == AuthMode.Signup ? 120 : 0,
        //             minHeight:  _authMode == AuthMode.Signup ? 60 : 0,
        //           ),
        //             duration: Duration(milliseconds: 300),
        //           curve: Curves.easeIn,
        //           child: FadeTransition(
        //             opacity: _opacityAnimation,
        //             child: SlideTransition(
        //               position: _slideAnimation,
        //               child: SignUpBody(),
        //             ),
        //           ),
        //         ),
        //         SizedBox(
        //           height: 20,
        //         ),
        //         if(_isLoading)CircularProgressIndicator(),
        //         CustomButton(
        //           func: submit,
        //           backgroundColor: MAIN_ORANGE,
        //           textColor: Colors.white,
        //           text: (_authMode == AuthMode.Login ? 'LOGIN' : 'SignUp'),
        //         ),
        //        ElevatedButton(
        //            onPressed: _switchAuthMode,
        //            child: Text('${_authMode == AuthMode.Login ? 'SignUp' : 'LOGIN'} INSTEAD'),
        //           style: ElevatedButton.styleFrom(
        //            backgroundColor: MAIN_ORANGE,
        //            padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 8),
        //            // minimumSize: Size(150, 50),
        //          ),
        //        ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
