import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/book_body.dart';

import '../../../../core/shred_widgets/app_bar.dart';

class BookingView extends StatelessWidget {
  const BookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: CustomAppBar(context: context),
        body: const BookBody(),
      ),
    );
  }
}
