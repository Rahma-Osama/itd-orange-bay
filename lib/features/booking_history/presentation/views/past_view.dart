import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/container_body.dart';

class PastView extends StatelessWidget {
  const PastView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) => Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const ContainerBody(),
      ),
    );
  }
}
