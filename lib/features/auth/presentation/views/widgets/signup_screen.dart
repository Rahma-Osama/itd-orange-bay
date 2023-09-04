import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';
import 'package:orange_bay_new/features/program/presentation/views/book_view.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilities/styles.dart';
import '../login_view.dart';
import 'log_in.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
var emailController = TextEditingController();
var passwordController = TextEditingController();
bool isPasswordVisible = false;
class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding:  const EdgeInsets.all(20.0), //this number is standard at all at will make padding to make it in center
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Register' ,
                    style: Styles.TextStyle16.copyWith(color: Colors.black)),
                 SizedBox(
                  height: MediaQuery.of(context).size.height/40,
                ),
                // const SizedBox(
                //   height: 40.0,
                // ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Fullname',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person,),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    prefixIcon: Icon(Icons.email,),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'PhoneNumber',
                    prefixIcon: Icon(Icons.phone_android,),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock,),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon: Icon(
                        isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  obscureText: !isPasswordVisible,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  color: MAIN_ORANGE,
                  child:  MaterialButton(
                    onPressed: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginView(),
                        ),
                      );
                    },
                    child: const Text(
                      'SignUp',
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
                  children:  [
                    Text('Already have an account ?',
                      style: Styles.TextStyle14.copyWith(color: Colors.black),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginView(),
                          ),
                        );
                      },
                      child:  Text(
                        'Log In ',
                        style: Styles.TextStyle14.copyWith(color: MAIN_ORANGE),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
