import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/constants/assets_data.dart';
import 'package:orange_bay_new/core/widgets/currency_dropdown.dart';
import 'package:orange_bay_new/core/widgets/localization_dropdown.dart';
import 'package:orange_bay_new/core/widgets/notification_icon_container.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Image.asset(AssetsData.logo),
      actions: const [
        CurrencyDropDown(),
        SizedBox(width: 2),
        LocalizationDropDown(),
        SizedBox(width: 2),
        NotificationIconContainer(),
        SizedBox(width: 4),
      ],
    );
  }
}
