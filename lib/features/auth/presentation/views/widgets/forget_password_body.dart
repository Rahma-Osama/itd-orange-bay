import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/constants/assets_data.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';

class ForgetPasswordBody extends StatelessWidget {
  ForgetPasswordBody({Key? key}) : super(key: key);
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsData.kBackGround),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: AnimatedContainer(
                margin: const EdgeInsets.all(16),
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
                height: 250,
                width: deviceSize.width * .85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: deviceSize.width > 600 ? 2 : 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Reset Password",
                              style: TextStyles.textStyle16
                                  .copyWith(color: Colors.black)),
                          const SizedBox(
                            height: 40.0,
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              labelText: 'Enter your Email',
                              prefixIcon: Icon(
                                Icons.email_outlined,
                              ),
                              border: OutlineInputBorder(),
                            ),
                            onFieldSubmitted: (value) {
                              debugPrint(value);
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            color: AppColors.deepOrange,
                            child: MaterialButton(
                              onPressed: () {},
                              child: const Text(
                                'Send',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
