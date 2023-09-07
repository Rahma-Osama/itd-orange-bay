import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/widgets/program_body.dart';

class ProgramView extends StatefulWidget {
  const ProgramView({Key? key}) : super(key: key);

  @override
  State<ProgramView> createState() => _ProgramViewState();
}

class _ProgramViewState extends State<ProgramView> {
  final String initialBackgroundImage = 'assets/images/img_1.png';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: ProBody(initialBackgroundImage: initialBackgroundImage),
      ),
    );
  }
}
