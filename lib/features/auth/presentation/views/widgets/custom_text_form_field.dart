// import 'package:flutter/material.dart';
// class CustomTextFormField extends StatelessWidget {
//   const CustomTextFormField ({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: passwordController,
//       decoration: InputDecoration(
//         labelText: 'Password',
//         prefixIcon: const Icon(
//           Icons.lock,
//         ),
//         suffixIcon: IconButton(
//           onPressed: () {
//             setState(() {
//               isPasswordVisible = !isPasswordVisible;
//             });
//           },
//           icon: Icon(
//             isPasswordVisible
//                 ? Icons.visibility
//                 : Icons.visibility_off,
//           ),
//         ),
//         border: const OutlineInputBorder(),
//       ),
//       keyboardType: TextInputType.visiblePassword,
//       onFieldSubmitted: (value) {
//         debugPrint(value);
//       },
//       obscureText: !isPasswordVisible,
//     ),;
//   }
// }
