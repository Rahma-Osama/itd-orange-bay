import 'package:flutter/material.dart';
import 'activities_container.dart';
class Activities extends StatefulWidget {
  const Activities({Key? key}) : super(key: key);


  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) => ActivitiesContainr(
            index: index,
          ),
          scrollDirection: Axis.horizontal,
        ));
  }
}
