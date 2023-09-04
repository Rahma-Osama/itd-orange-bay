import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/shred_widgets/custom_button.dart';
import 'package:orange_bay_new/core/shred_widgets/default_text.dart';
import 'package:orange_bay_new/core/shred_widgets/profile_text.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/profile_view.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/header.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/security_body.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilities/styles.dart';
import '../security_view.dart';
import 'container_text.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
             ContainerProfile(
              type: TextInputType.text,
              text: 'First Name',
            ),
             ContainerProfile(
              type: TextInputType.text,
              text: 'Last Name',
            ),
             ContainerProfile(
              type: TextInputType.emailAddress,
              text: 'Email Address',
            ),
             ContainerProfile(
              type: TextInputType.number,
              text: 'Phone Number',
            ),

          ],
        ),
      ),
    );
  }
}
