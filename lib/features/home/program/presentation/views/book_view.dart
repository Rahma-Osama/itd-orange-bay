import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/widgets/app_bar3.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/widgets/book_body.dart';

class BookView extends StatelessWidget {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: const AppBarButton3(
          text: 'Booking Details',
        ),
        body: const BookBody(),
      ),
    );
  }
}
