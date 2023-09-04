import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';

import 'features/program/presentation/views/program_layout.dart';
import 'features/splash/presentation/views/splash_view.dart';






void main() {
  runApp( myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      //   useMaterial3: true,
      // ),
      home:  const SplashScreen(),
    );
  }
}