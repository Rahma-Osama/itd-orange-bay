import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/pick_date.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/pick_time.dart';

import '../../../../../core/utilities/styles.dart';
import '../../../../home/presentation/views/widgets/pick_date.dart';

class SecondContainer extends StatefulWidget {
  const SecondContainer({Key? key}) : super(key: key);

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
  int count1 = 2;
  int count2 = 0;
  int count3 = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          // height: 400,
          // padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal:20,
          vertical: MediaQuery.of(context).size.height/50
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'When are you going?',
              style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400,),
            ),
            const SizedBox(height: 12,),
            const PickDate2(),
            const SizedBox(height: 12,),
            const PickTime(),
            const SizedBox(height: 24),
            Text(
              'How many tickets?',
              style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Text(
                  'Adult (age 12-99)',
                  style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w500 , color: Colors.black)
                ),
                m2Expanded(context , 'count1'),
              ],
            ),
            const SizedBox(height: 12,),
            Text(
              '210.00 EGP',
              style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400 , color: const Color(0xFF585757)),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                    'Child (age 5-11)',
                    style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w500 , color: Colors.black)
                ),
                m2Expanded(context , 'count2'),
              ],
            ),
            const SizedBox(height: 12,),
            Text(
              '53.00 EGP',
              style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400 , color: const Color(0xFF585757)),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Image(image: AssetImage('assets/images/info.png')),
                const SizedBox(width: 10 ,),
                Text(
                  'Children under 4 are free',
                  style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
         const SizedBox(height: 8),
            Row(
              children: [
                const Image(image: AssetImage('assets/images/info.png')),
                const SizedBox(width: 10 ,),
                Flexible(
                  child: Text(
                    'For a full refund, cancel at least 24 hours in advance of the start date of the experience.',
                    style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24,),
            const Divider(),
            const SizedBox(height: 8,),
            Text(
              'Additional Services',
              style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  'Boat (250 EGP)',
                  style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w500),
                ),
                m2Expanded(context , 'count3'),
                const SizedBox(
                  width: 15.0,
                ),
              ],
            ),
            const SizedBox(height: 12,),
            Text(
              'Boat cruise with a snorkeling stop',
              style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400 , color: const Color(0xFF585757)),
            ),
          ],
        ),
      ),
      ),
    );
  }
  Expanded m2Expanded(BuildContext context, String type) {
    int count;
    Function() increment;
    Function() decrement;

    switch (type) {
      case 'count1':
        count = count1;
        increment = () => setState(() => count1++);
        decrement = () => setState(() => count1--);
        break;
      case 'count2':
        count = count2;
        increment = () => setState(() => count2++);
        decrement = () => setState(() => count2--);
        break;
      case 'count3':
        count = count3;
        increment = () => setState(() => count3++);
        decrement = () => setState(() => count3--);
        break;
      default:
        count = 0;
        increment = () {};
        decrement = () {};
    }

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 24, // Set the desired width of the button
            height: 24, // Set the desired height of the button
            child: FloatingActionButton(
              backgroundColor: count > 0 ? MAIN_ORANGE : Colors.grey,
              heroTag: '${type}--',
              onPressed: decrement,
              mini: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Set the desired border radius
              ),
              child: const Icon(Icons.remove),
            ),
          ),
          const SizedBox(width: 10.0),
          Text(
            '$count',
            style: Styles.TextStyle18,
          ),
          const SizedBox(width: 10.0),
          SizedBox(
            width: 24, // Set the desired width of the button
            height: 24, // Set the desired height of the button
            child: FloatingActionButton(
              backgroundColor: count > 0 ? MAIN_ORANGE : Colors.grey,
              heroTag: '${type}++',
              onPressed: increment,
              mini: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Set the desired border radius
              ),
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
