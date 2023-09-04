import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/overview.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/program_body.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/programs.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/reviews.dart';

import '../../../../constants.dart';
class ProgramLayout extends StatefulWidget {
  const ProgramLayout({Key? key}) : super(key: key);

  @override
  State<ProgramLayout> createState() => _ProgramLayoutState();
}

class _ProgramLayoutState extends State<ProgramLayout> {
  final String initialBackgroundImage = 'assets/images/img_1.png';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        // appBar: AppBarButtom(),
        body: ProBody(initialBackgroundImage: initialBackgroundImage),
      ),
    );
  }
}
