import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/widgets/app_bar.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/book_body.dart';

class BookingView extends StatelessWidget {
  const BookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: customAppBar(context: context),
        body: const BookBody(),
      ),
    );
  }
}
