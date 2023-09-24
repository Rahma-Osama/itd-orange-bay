import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/past_view.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/up_coming_view.dart';

class HistoryBody extends StatefulWidget {
  const HistoryBody({Key? key}) : super(key: key);

  @override
  State<HistoryBody> createState() => _HistoryBodyState();
}

class _HistoryBodyState extends State<HistoryBody> {
  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    return DefaultTabController(
      length: 2,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), // Creates border
                    color: Colors.white),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), // Creates border
                      color: AppColors.deepOrange),
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  indicatorColor: Colors.orange,
                  tabs: [
                    Tab(
                      text: locale.past,
                    ),
                    Tab(
                      text: locale.upcoming,
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: TabBarView(
                    children: [
                      PastView(),
                      UpcomingView(),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
// SingleChildScrollView(
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// children: [
// Container(
// height: 60,
// padding: const EdgeInsets.all(8),
// child: ListView.builder(
// itemCount: 2,
// scrollDirection: Axis.horizontal,
// itemBuilder: (context, index) => GestureDetector(
// onTap: () {
// setState(() {
// bookText = [false, false];
// bookText[index] = true;
// });
// },
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(5),
// color: bookText[index]
// ? AppColors.deepOrange
//     : Colors.white,
// ),
// alignment: Alignment.center,
// width: MediaQuery.of(context).size.width * .45,
// child: Text(
// bookDetails[index],
// style: TextStyle(
// color: bookText[index]
// ? Colors.white
//     : Colors.black),
// ),
// ),
// )),
// ),
// bookText[0]
// ? const PastBody()
// : bookText[1]
// ? const UpcomingBody()
// : const SizedBox(),
// ],
// ),
// ),
// );
