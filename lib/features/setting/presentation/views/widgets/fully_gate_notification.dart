import 'package:facility_management/constants.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/datamodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fully_Gate_Notification extends StatelessWidget {
Fully_Gate_Notification({required this.model});
DataModel? model;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          color: LIGHT_GREY.withOpacity(.2),
          borderRadius: BorderRadius.circular(10),

        ),
        child: Column(
          children: [
            Row(
              children: [
      Text(model!.unitName!),
        Text(model!.Date!),
              ],
            )
          ],
        ),
      )
    );
  }
}
