import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/profile_body.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/security_body.dart';

import '../../../../../constants.dart';
import '../../../../../core/shred_widgets/custom_button.dart';


class HeaderText extends StatefulWidget {
  const HeaderText({Key? key}) : super(key: key);

  @override
  State<HeaderText> createState() => _HeaderTextState();
}

class _HeaderTextState extends State<HeaderText> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        profileText = [false, false, false];
                        profileText[index] = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.circular(5),
                        color: profileText[index] ? MAIN_ORANGE : Colors.white,
                      ),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * .45,
                      child: Text(
                        profDetails[index],
                        style: TextStyle(
                            color: profileText[index]
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  )),
        ),
        profileText[0]
            ? const ProfileBody()
            : profileText[1]
            ? const SecurityBody()
            : const SizedBox(),
        Padding(
          padding: const EdgeInsets.all(30),
          child: CustomButton(
            backgroundColor: MAIN_ORANGE,
            text: 'Update',
            func: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> BookView()));
            },
            width:double.infinity,
          ),
        ),
      ],
    );
  }
}
