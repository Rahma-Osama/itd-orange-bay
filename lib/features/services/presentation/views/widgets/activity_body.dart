import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/services/presentation/views/widgets/activities_item.dart';


class ActivityBody extends StatefulWidget {
  const ActivityBody({Key? key}) : super(key: key);

  @override
  State<ActivityBody> createState() => _ActivityBodyState();
}

class _ActivityBodyState extends State<ActivityBody> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: MediaQuery.of(context).size.height/40,
            crossAxisSpacing: MediaQuery.of(context).size.height/40,
            childAspectRatio: .9,
            crossAxisCount: 2,), itemBuilder: (context,index)=>ActivityItem(index: index%3,)),
    );
  }
}
