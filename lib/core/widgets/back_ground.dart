import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final String imagePath;
  const BackGround({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40)),
      child: FadeInImage(
        height: MediaQuery.of(context).size.height/3,
        width: double.infinity,
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
        placeholder: const AssetImage('assets/images/img_1.png'),
      ),
    );
  }
}
// return Container(
//       height: MediaQuery.of(context).size.height/3,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(imagePath),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
