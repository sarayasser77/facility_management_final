import 'package:facility_management/constants.dart';
import 'package:flutter/material.dart';

import '../utilies/styles.dart';

class CheckButtom extends StatefulWidget {
  const CheckButtom({Key? key}) : super(key: key);

  @override
  State<CheckButtom> createState() => _CheckButtomState();
}

class _CheckButtomState extends State<CheckButtom> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            activeColor: kPrimaryColor,
            onChanged: (newBool){
              setState(() {
                isChecked = newBool!;
              });
            }
        ),
        Text(
          'I agree to terms and conditions',
          style: Styles.textStyle22.copyWith(fontSize: 13),
        ),
      ],
    );
  }
}
