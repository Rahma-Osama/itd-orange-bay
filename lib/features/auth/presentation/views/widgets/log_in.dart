import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';
import 'package:orange_bay_new/features/auth/presentation/views/signup_view.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/book_view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

var emailController = TextEditingController();
var passwordController = TextEditingController();
bool isPasswordVisible = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Log in',
                  style: TextStyles.textStyle16.copyWith(color: Colors.black)),
              const SizedBox(
                height: 40.0,
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Enter your Email',
                  // prefixIcon: Icon(Icons.person,),
                  border: OutlineInputBorder(),
                ),
                onFieldSubmitted: (value) {
                  debugPrint(value);
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                ),
                keyboardType: TextInputType.visiblePassword,
                onFieldSubmitted: (value) {
                  debugPrint(value);
                },
                obscureText: !isPasswordVisible,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: const Text(
                  'FORGET PASSWORD?',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: AppColors.MAIN_ORANGE,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookView(),
                      ),
                    );
                  },
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyles.textStyle14.copyWith(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpView(),
                        ),
                      );
                    },
                    child: Text(
                      'SIGN UP ',
                      style: TextStyles.textStyle14
                          .copyWith(color: AppColors.MAIN_ORANGE),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
