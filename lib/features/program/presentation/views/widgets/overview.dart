import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/shred_widgets/custom_button.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
import 'package:orange_bay_new/features/program/presentation/views/book_view.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/overContainer.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/second_container.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/summary-container.dart';

import 'animation.dart';
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
