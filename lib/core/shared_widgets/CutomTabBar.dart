import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';
import '../../features/setting/presentation/animation/fadeanimation.dart';
import '../../features/setting/presentation/views/widgets/griditem.dart';
import '../../features/setting/presentation/views/widgets/gridviewcategories.dart';
import '../../features/setting/presentation/views/widgets/selectContainer.dart';

class Custom_TabBar extends StatefulWidget {
  @override
  State<Custom_TabBar> createState() => _Custom_TabBarState();
}

class _Custom_TabBarState extends State<Custom_TabBar> {
  List<String> items=[
    "New",
    "Open",
    "History"
  ];

  List<Widget> widgets=[

    const Grid_View_Categories(),
    const Center(
        child: Text("You Dont't have invitations at that moment",)),
    const Center(
        child: Text("You Dont't have invitations at that moment",)),

    // Container(
    //     height: 100,
    //   color: Colors.red,
    //     ),

  ];

  int current=0;

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        SizedBox(height: 10.h,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          color: LIGHT_GREY.withOpacity(.2),
          height: 50.h,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){

                return GestureDetector(
                  onTap: (){
                    current=index;
                    setState(() {

                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: current==index?kPrimaryColor:Colors.transparent,
                        borderRadius: BorderRadius.circular(7)
                    ),

                    width: 110.w,
                    height: 35.h,
                    child: Center(child: Text(items[index],style: TextStyle(color:current==index?Colors.white:Colors.black),),),
                  ),
                );
              }),
        ),
        const SizedBox(height: 10,),
        const SelectContainer(),
        SizedBox(
          height: 540.h,
        child: widgets[current]
        )

      ],
    );
  }
}


