import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/book_view.dart';

import 'log_in.dart';


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
 final Map< String , String > _authData = {
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

        width: deviceSize.width*.85,
        child: const LoginScreen(),

      ),
    );
  }
}
