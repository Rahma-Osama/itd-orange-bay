import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/widgets/app_bar3.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/header.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: const AppBarButton3(
          text: 'My Profile',
        ),
        body: const HeaderText(),
      ),
    );
  }
}
