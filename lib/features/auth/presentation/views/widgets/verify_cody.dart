import 'package:facility_management/core/utilies/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';

class VerifyBody extends StatefulWidget {
  const VerifyBody({Key? key}) : super(key: key);

  @override
  State<VerifyBody> createState() => _VerifyBodyState();
}

class _VerifyBodyState extends State<VerifyBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            'Verification',
          style: Styles.textStyle27,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
            'Enter 4-digit number that sent to +2011221****',
          style: Styles.textStyle22,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [

          ],
        ),
        SizedBox(height: 15,),
        CustomButton(
          backgroundColor: kPrimaryColor,
          text: 'Continue',
          func: () {
            GoRouter.of(context).push('/homeView');
          },
        ),
      ],
    );
  }
}
