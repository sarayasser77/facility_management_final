import 'package:facility_management/core/utilies/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/shared_widgets/text_field.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView (
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name*',
              style: Styles.textStyle22.copyWith(fontSize: 12)
            ),
            SizedBox(height: 8,),
            defaultText(
                type: TextInputType.text,
            ),
            SizedBox(height: 13,),
            Text(
                'Email*',
                style: Styles.textStyle22.copyWith(fontSize: 12)
            ),
            SizedBox(height: 8,),
            defaultText(
              type: TextInputType.text,
            ),
            SizedBox(height: 13,),
            Text(
                'Number*',
                style: Styles.textStyle22.copyWith(fontSize: 12)
            ),
            SizedBox(height: 8,),
            defaultText(
              type: TextInputType.text,
              hint: 'Complaint',
            ),
            SizedBox(height: 13,),
            Text(
                'Your Inquire*',
                style: Styles.textStyle22.copyWith(fontSize: 12),
            ),
            SizedBox(height: 8,),
            defaultText(
              type: TextInputType.text,
            ),
            SizedBox(height: 13,),
            Text(
              'Inquire details*',
              style: Styles.textStyle22.copyWith(fontSize: 12),
            ),
            SizedBox(height: 8,),
            defaultText(
              type: TextInputType.text,
              lines: 8,
            ),
            SizedBox(height: 20,),
            CustomButton(
              width: MediaQuery.of(context).size.width*.7,
                backgroundColor: kPrimaryColor,
                text: 'Send',
                func: (){}
            ),
          ],
        ),
      ),
    );
  }
}
