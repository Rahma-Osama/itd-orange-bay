// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';
// import '../../core/utilities/assets.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   int _currentPage = 0;
//
//   late Timer _timer;
//   final PageController _pageController = PageController(
//     initialPage: 0,
//   );
//
//   @override
//   void initState() {
//     super.initState();
//     _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
//       if (_currentPage < 2) {
//         _currentPage++;
//       } else {
//         setState(() {
//           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeLayout()));
//         });
//       }
//
//       _pageController.animateToPage(
//         _currentPage,
//         duration: const Duration(milliseconds: 500),
//         curve: Curves.easeIn,
//       );
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _timer?.cancel();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return PageView(
//       controller: _pageController,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(AssetData.splash[0]),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(AssetData.splash[1]),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(AssetData.splash[2]),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//   }
//
// import 'package:flutter/material.dart';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';
// import 'package:page_transition/page_transition.dart';
//
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//       splash: 'assets/images/img.png',
//       nextScreen: HomeLayout(),
//       splashTransition: SplashTransition.rotationTransition,
//       pageTransitionType: PageTransitionType.rightToLeftWithFade,
//     );
//   }
// }


