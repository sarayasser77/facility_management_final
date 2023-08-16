import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';
import '../../features/setting/presentation/animation/fadeanimation.dart';
import '../../features/setting/presentation/views/widgets/griditem.dart';
import '../../features/setting/presentation/views/widgets/gridviewcategories.dart';
import '../../features/setting/presentation/views/widgets/HistoryRequestContainer.dart';
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
ListView.builder(
    itemCount: 3,
    itemBuilder: (context,insex){
  return         History_Request_Container();

})


  ];

  int current=0;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 10.h,),
        Container(
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

                    width: 117.w,
                    height: 35.h,
                    child: Center(child: Text(items[index],style: TextStyle(color:current==index?Colors.white:Colors.black),),),
                  ),
                );
              }),
        ),
         SizedBox(height: 7.h,),
       current==0? const SelectContainer():SizedBox(height: 20.h,),
        SingleChildScrollView(
          child: Container(
            height: 470.h,
          child: widgets[current],

          ),
        )

      ],
    );
  }
}



