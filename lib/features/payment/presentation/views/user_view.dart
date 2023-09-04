import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/shred_widgets/app_bar2.dart';
import 'package:orange_bay_new/core/shred_widgets/new_appbar.dart';
import 'package:orange_bay_new/features/payment/presentation/views/widgets/user_body.dart';

import '../../../../core/shred_widgets/app_bar.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.grey[100],
        appBar: AppBarNew() ,
        body: const UserBody(),
      ),
    );
  }
}
