import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';
import '../../features/setting/presentation/animation/fadeanimation.dart';
import '../../features/setting/presentation/views/widgets/griditem.dart';
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
    SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
          child: FadeAnimation(4,child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 6,
              itemBuilder: (context , index)=>Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridItemSetting(index: index,)
              )),)
      ),
    ),
    Center(
        child: Text("You Dont't have invitations at that moment",)),
    Center(child: Text("You Dont't have invitations at that moment")),

  ];

  int current=0;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
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
                          borderRadius: BorderRadius.circular(10)
                      ),

                      width: 110.w,
                      height: 35.h,
                      child: Center(child: Text(items[index],style: TextStyle(color:current==index?Colors.white:Colors.black),),),
                    ),
                  );
                }),
          ),
          SizedBox(height: 10,),
          SelectContainer(),
          SingleChildScrollView(
            child: Container(
             height: 470.h,
            child: widgets[current]
            ),
          )

        ],
      ),
    );
  }
}
