import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/widgets/app_bar3.dart';

class VideosView extends StatefulWidget {
  const VideosView({Key? key}) : super(key: key);

  @override
  State<VideosView> createState() => _VideosViewState();
}

class _VideosViewState extends State<VideosView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: const AppBarButton3(
            text: 'Videos',
          ),
          body: Container()),
    );
  }
}