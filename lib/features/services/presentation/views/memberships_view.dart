import 'package:flutter/material.dart';

import 'package:orange_bay_new/core/shred_widgets/app_bar3.dart';


class MemberShipView extends StatefulWidget {
  const MemberShipView({Key? key}) : super(key: key);

  @override
  State<MemberShipView> createState() => _MemberShipViewState();
}

class _MemberShipViewState extends State<MemberShipView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: const AppBarButtom3(text: 'Memberships',) ,
          body: Container()
      ),
    );

  }
}
