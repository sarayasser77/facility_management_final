import 'package:facility_management/constants.dart';
import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/datamodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Fully_Gate_Notification extends StatelessWidget {
Fully_Gate_Notification({required this.name,required this.date,required this.details});

final String name;
final String date;
final String details;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBarButtom2(text: "Gate notification"),
       body: Column(
         children: [
           SizedBox(height: 20.h,),
           Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: LIGHT_GREY.withOpacity(.2),
                borderRadius: BorderRadius.circular(10),

              ),
              child: Column(
                children: [
                  Text(name!,style: const TextStyle(color: Colors.black),),
                  Text(date!,style: const TextStyle(color: Colors.black),),
                  Text(details!,style: const TextStyle(color: Colors.black),),
                ],
              )
            ),
         ],
       ),
      )
    );
  }
}
