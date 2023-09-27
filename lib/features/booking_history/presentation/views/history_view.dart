import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/widgets/home_app_bar.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/history_body.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: const HomeAppBar(),
        body: const HistoryBody(),
      ),
    );
  }
}
