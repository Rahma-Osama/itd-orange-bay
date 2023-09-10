import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/widgets/new_appbar.dart';
import 'package:orange_bay_new/features/payment/presentation/views/widgets/pay_body.dart';

class PayView extends StatelessWidget {
  const PayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: AppBarNew(),
        body: PayBody(),
      ),
    );
  }
}