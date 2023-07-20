import 'package:facility_management/constants.dart';
import 'package:facility_management/core/utilies/styles.dart';
import 'package:facility_management/features/boarding/presentation/data.dart';
import 'package:flutter/material.dart';
class ItemBuilder extends StatelessWidget {
  int index=0;
   ItemBuilder({Key? key , required this.index} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(BoardingData.Images[index]),
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/20, bottom:MediaQuery.of(context).size.height/40 ),
          child: Text(BoardingData.headingData[index],style: Styles.textStyle27,),
        ),
        Text(BoardingData.desc[index], style: Styles.textStyle15.copyWith(color: LIGHT_GREY),)
      ],
    );
  }
}
