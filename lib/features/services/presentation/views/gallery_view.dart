import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/shred_widgets/app_bar3.dart';
import 'package:orange_bay_new/features/services/presentation/views/widgets/gallery_body.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: const AppBarButtom3(text: 'Photos',),
        body: const GalleryBody(),
      ),
    );
  }
}
