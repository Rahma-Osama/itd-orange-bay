import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/services/presentation/views/widgets/services_container.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: size.height / 40,
          crossAxisSpacing: size.height / 40,
          childAspectRatio: .9,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => ServicesContainer(
          index: index,
        ),
      ),
    );
  }
}
