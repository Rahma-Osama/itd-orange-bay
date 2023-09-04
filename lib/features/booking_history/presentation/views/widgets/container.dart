import 'package:flutter/material.dart';

import '../../../../../core/utilities/styles.dart';

class ContainerBody extends StatelessWidget {
  const ContainerBody({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Image(
            image: AssetImage('assets/images/book.png'),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Classic Program',
                  style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w700,color: Colors.black),
                ),
                const SizedBox(height: 5,),
                const Text(
                  'Cancellation Deadline: 10/3/2022',
                  style: TextStyle(
                    color: Color(0xFFE20D0D),
                    fontSize: 13.37,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date',
                      style: Styles.TextStyleNormal14,
                    ),
                    Text(
                      '2/3/2022 at 18:00',
                      style: Styles.TextStyleNormal14,
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Text(
                  'Adult x2',
                  style: Styles.TextStyleNormal14,
                ),
                const SizedBox(height: 10,),
                Text(
                  'Children x1',
                  style: Styles.TextStyleNormal14,
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Program Status',
                      style: Styles.TextStyleNormal14,
                    ),
                    const SizedBox(width: 35),
                    Text(
                      'Paid',
                      style: Styles.TextStyleNormal14.copyWith(color: const Color(0xFFCF0F0F),),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Divider(),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                      ),
                      const SizedBox(width: 35),
                      Text(
                        '750 EGP',
                        style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
