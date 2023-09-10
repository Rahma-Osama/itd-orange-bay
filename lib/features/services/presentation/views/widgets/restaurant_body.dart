import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/constants/assets_data.dart';
import 'package:orange_bay_new/features/services/presentation/views/widgets/restaurant_container.dart';

class RestBody extends StatelessWidget {
  const RestBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => RestContainer(
        index: index,
      ),
      itemCount: AssetsData.restaurants.length,
    );
  }
}
