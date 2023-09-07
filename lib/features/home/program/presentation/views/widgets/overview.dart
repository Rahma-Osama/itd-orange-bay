import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/widgets/first_container.dart';

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          FirstContainer(),
        ],
      ),
    );
  }
}
