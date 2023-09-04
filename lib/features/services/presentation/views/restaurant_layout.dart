import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/shred_widgets/app_bar3.dart';
import 'package:orange_bay_new/features/services/presentation/views/widgets/restaurant_body.dart';

class RestLayout extends StatefulWidget {
  const RestLayout({Key? key}) : super(key: key);

  @override
  State<RestLayout> createState() => _RestLayoutState();
}

class _RestLayoutState extends State<RestLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
              child: Scaffold(
                backgroundColor: Colors.grey[100],
                appBar: const AppBarButtom3(text: 'Restaurants',) ,
                  body: const restBody()
              ),
            );

  }
}
