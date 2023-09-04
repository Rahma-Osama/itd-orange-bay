import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/book_detail_body.dart';

import '../../../../core/shred_widgets/app_bar3.dart';

class BookView extends StatelessWidget {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: const AppBarButtom3(text: 'Booking Details',),
        body: const BookBody(),
      ),
    );
  }
}
