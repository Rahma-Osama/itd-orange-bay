// import 'package:flutter/material.dart';
//
// class StepperScreen extends StatefulWidget {
//   const StepperScreen({Key? key}) : super(key: key);
//
//   @override
//   State<StepperScreen> createState() => _StepperScreenState();
// }
//
// class _StepperScreenState extends State<StepperScreen> {
//   int currentstep = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Container(
//             height: 300,
//             width: 500,
//             child: Stepper(
//               steps: getSteps(),
//               type: StepperType.horizontal,
//               currentStep: currentstep,
//               onStepContinue: () {}, // Do nothing when the continue button is pressed
//               onStepCancel: () {}, // Do nothing when the cancel button is pressed
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// List<Step> getSteps() => [
//   Step(
//     isActive: true,
//     state: StepState.indexed,
//     content: Container(),
//     title: Text('Step 1'),
//   ),
//   Step(
//     isActive: false,
//     state: StepState.disabled,
//     title: Text('Payment and confirm'),
//     content: Container(),
//   ),
//   Step(
//     isActive: false,
//     state: StepState.disabled,
//     title: Text('Success'),
//     content: Container(),
//   ),
// ];
