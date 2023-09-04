import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/security_body.dart';

import '../../../../core/shred_widgets/app_bar3.dart';

class SecurityView extends StatelessWidget {
  const SecurityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: const AppBarButtom3(text: 'My Profile',),
        body: const SecurityBody(),
      ),
    );
  }
}
