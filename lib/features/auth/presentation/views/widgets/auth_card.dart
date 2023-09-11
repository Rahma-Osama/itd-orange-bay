import 'package:flutter/material.dart';


import 'log_in.dart';

class AuthCard extends StatefulWidget {
  const AuthCard({Key? key}) : super(key: key);

  @override
  State<AuthCard> createState() => _AuthCardState();
}

enum AuthMode {
  login,
  signUp,
}

class _AuthCardState extends State<AuthCard>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey();

  late AnimationController _controller;



  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );

  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Future<void> submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }



  }

  // void _switchAuthMode() {
  //   if (_authMode == AuthMode.login) {
  //     setState(() {
  //       _authMode = AuthMode.signUp;
  //     });
  //     _controller.forward();
  //   } else {
  //     setState(() {
  //       _authMode = AuthMode.login;
  //     });
  //     _controller.reverse();
  //   }
  // }

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
        width: deviceSize.width * .85,
        child: const LoginScreen(),
      ),
    );
  }
}
