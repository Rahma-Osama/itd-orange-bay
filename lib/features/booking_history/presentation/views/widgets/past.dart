import 'package:flutter/material.dart';

import 'container.dart';

class PastBody extends StatelessWidget {
  const PastBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set the shadow color
                  spreadRadius: 2, // Set the spread radius of the shadow
                  blurRadius: 6, // Set the blur radius of the shadow
                  offset: const Offset(0, 3), // Set the offset of the shadow
                ),
              ],
            ),
            child: const ContainerBody(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal:3,
                vertical: MediaQuery.of(context).size.height/50
            ),
            child: Container(
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Set the shadow color
                    spreadRadius: 2, // Set the spread radius of the shadow
                    blurRadius: 6, // Set the blur radius of the shadow
                    offset: const Offset(0, 3), // Set the offset of the shadow
                  ),
                ],
              ),
              child: const ContainerBody(),
            ),
          ),
        ],
      ),
    );
  }
}
