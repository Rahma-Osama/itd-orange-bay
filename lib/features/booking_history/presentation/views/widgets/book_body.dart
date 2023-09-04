import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/upComing_body.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/widgets/past.dart';


import '../../../../../constants.dart';



class BookBody extends StatefulWidget {
  const BookBody({Key? key}) : super(key: key);

  @override
  State<BookBody> createState() => _BookBodyState();
}

class _BookBodyState extends State<BookBody> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 60,
              padding: const EdgeInsets.all(8),
              child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        bookText = [false, false];
                        bookText[index] = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.circular(5),
                        color: bookText[index] ? MAIN_ORANGE : Colors.white,
                      ),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * .45,
                      child: Text(
                        bookDetails[index],
                        style: TextStyle(
                            color: bookText[index]
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  )),
            ),
            bookText[0]
                ?  const PastBody()
                : bookText[1]
                ? const UpcomingBody()
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
