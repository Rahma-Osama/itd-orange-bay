import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/constants/assets_data.dart';
import 'auth_sign_card.dart';

class SignUPMain extends StatefulWidget {
  const SignUPMain({Key? key}) : super(key: key);

  @override
  State<SignUPMain> createState() => _SignUPMainState();
}

class _SignUPMainState extends State<SignUPMain> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      decoration:  const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsData.kBackGround),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: SingleChildScrollView(
        child: SizedBox(
          height: deviceSize.height,
          width: deviceSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: deviceSize.width > 600 ? 2 : 1,
                child: const AuthCardSign(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
