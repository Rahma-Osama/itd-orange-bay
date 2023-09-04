import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/utilities/assets.dart';
import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';
import 'package:orange_bay_new/features/onboarding/onboarding.dart';



class SplashBody extends StatefulWidget {
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

// class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _backgroundOpacity;
//   late Animation<double> _secondImageOpacity;
//   bool _showText = false;
//
//   @override
//   void initState() {
//     super.initState();
//     navigateToNextScreen();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 3), // Adjust the duration as needed
//     );
//
//     _backgroundOpacity = CurvedAnimation(
//       parent: _controller,
//       curve: Interval(0.0, 0.2, curve: Curves.easeInOut),
//     );
//
//     _secondImageOpacity = CurvedAnimation(
//       parent: _controller,
//       curve: Interval(0.2, 0.4, curve: Curves.easeInOut),
//     );
//
//     _controller.forward(); // Start the animations
//     _controller.addStatusListener((status) {
//       if (status == AnimationStatus.completed) {
//         setState(() {
//           _showText = true; // Show text after the animations complete
//         });
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//   // Function to navigate to the next screen
//  void navigateToNextScreen() {
//   Future.delayed(const Duration(seconds: 6), () {
//      Navigator.pushReplacement(
//       context,
//        MaterialPageRoute(builder: (context) => HomeLayout()), // Replace with the appropriate screen
//      );
//    });
//  }
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.center,
//       children: <Widget>[
//         FadeTransition(
//           opacity: _backgroundOpacity,
//           child: SizedBox(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             child: Image.asset('assets/images/IMG_6497-_1_ (1) (2) (1) (1) (1).jpg', fit: BoxFit.cover),
//           ),
//         ),
//         Column(
//           children: <Widget>[
//             const Expanded(
//               flex: 1,
//               child: SizedBox(),
//             ),
//             AnimatedOpacity(
//               opacity: _secondImageOpacity.value,
//               duration: const Duration(milliseconds: 420),
//               child: Center(
//                 child: ClipRRect(
//                   borderRadius: const BorderRadius.all(
//                     Radius.circular(8.0),
//                   ),
//                   child: Image.asset(AssetData.logo),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             Visibility(
//               visible: _showText,
//               child: Column(
//                 children: [
//                   AnimatedOpacity(
//                     opacity: _showText ? 1.0 : 0.0,
//                     duration: const Duration(milliseconds: 420),
//                     child: const Text(
//                       "Welcome to Orange Bay",
//                       textAlign: TextAlign.left,
//                       style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   AnimatedOpacity(
//                     opacity: _showText ? 1.0 : 0.0,
//                     duration: const Duration(milliseconds: 420),
//                     child: Text(
//                       "Planning your next journey with us",
//                       textAlign: TextAlign.left,
//                       style: TextStyle(fontSize: 16, color: MAIN_ORANGE, fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const Expanded(
//               flex: 8,
//               child: SizedBox(),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
// new
class _SplashBodyState extends State<SplashBody> {
  bool _showContent = false;
  @override
  void initState() {
    super.initState();
    // Call the function to navigate after 3 seconds
    navigateToNextScreen();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showContent = true;
      });
    });
  }

  // Function to navigate to the next screen
  void navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoarding()), // Replace with the appropriate screen
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset('assets/images/IMG_6497-_11_.png', fit: BoxFit.cover),
        ),
        Column(
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Center(
              child: AnimatedContainer(
                duration: const Duration(seconds: 1), // Animation duration
                curve: Curves.easeInOut, // Animation curve
                width: _showContent ? 180 : 0, // Set desired initial and final width
                height: _showContent ? 180 : 0,
                child: Image.asset(AssetData.logo),
              ),
            ),
            // const SizedBox(
            //   height: 8,
            // ),
            Visibility(
              visible: _showContent,
              child: Column(
                children: [
                  AnimatedOpacity(
                    opacity: _showContent ? 1.0 : 0.0, // Animate opacity
                    duration: const Duration(milliseconds: 420),
                    child: const Text(
                      "Welcome to Orange Bay",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700,color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  AnimatedOpacity(
                    opacity: _showContent ? 1.0 : 0.0, // Animate opacity
                    duration: const Duration(milliseconds: 420),
                    child: const Text(
                        ("Planning your next journey with us "),
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16,color: Colors.white , fontWeight: FontWeight.w800,
                            shadows: [
                          Shadow(color: Colors.grey,
                            offset: Offset(.1,.1)
                          )
                        ],
                        ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 8,
              child: SizedBox(),
            ),
          ],
        ),
      ],
    );
  }
}

