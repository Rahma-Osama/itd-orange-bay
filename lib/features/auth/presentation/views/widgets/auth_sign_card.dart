import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/auth/presentation/views/widgets/signup_screen.dart';


class AuthCardSign extends StatefulWidget {
  const AuthCardSign({Key? key}) : super(key: key);

  @override
  State<AuthCardSign> createState() => _AuthCardSignState();
}

enum AuthMode { login, signUp }

class _AuthCardSignState extends State<AuthCardSign>
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
        child: const SignUpScreen(),
      ),
    );
  }
}
