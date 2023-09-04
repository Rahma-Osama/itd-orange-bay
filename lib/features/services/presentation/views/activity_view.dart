import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/shred_widgets/app_bar3.dart';
import 'package:orange_bay_new/features/services/presentation/views/widgets/activity_body.dart';

class ActivityView extends StatelessWidget {
  const ActivityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: AppBarButtom3(text: 'Activities',),
        body: ActivityBody(),
      ),
    );
  }
}
