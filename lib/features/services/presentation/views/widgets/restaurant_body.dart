import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utilities/assets.dart';
import 'package:orange_bay_new/features/services/presentation/views/widgets/restaurant_container.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilities/styles.dart';

class restBody extends StatelessWidget {
  const restBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => RestContainer(
        index: index,
      ),
      itemCount: AssetData.restaurants.length,
    );
  }
}
