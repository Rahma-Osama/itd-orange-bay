import 'package:flutter/material.dart';
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
