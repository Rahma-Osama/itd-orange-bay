import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/widgets/app_bar3.dart';
import 'package:orange_bay_new/features/services/presentation/views/widgets/restaurant_body.dart';

class RestView extends StatefulWidget {
  const RestView({Key? key}) : super(key: key);

  @override
  State<RestView> createState() => _RestViewState();
}

class _RestViewState extends State<RestView> {
  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar:  AppBarButton3(
            text: locale.restaurants,
          ),
          body: const RestBody()),
    );
  }
}
