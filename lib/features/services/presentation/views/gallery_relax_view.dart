import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/constants/assets_data.dart';

class GalleryRelaxView extends StatelessWidget {
  const GalleryRelaxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
        itemCount: AssetsData.gallery.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: size.height / 40,
          crossAxisSpacing: size.height / 40,
          childAspectRatio: .9,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => Image.asset(
          AssetsData.gallery[index],
          fit: BoxFit.cover,
        ));
  }
}
