import 'package:facility_management/features/setting/presentation/views/Gate_notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card_setting.dart';
import 'listmodel_setting.dart';

class List_Setting extends StatelessWidget {

  final List<ListModelSetting> items=[
    ListModelSetting(icon: Icons.garage_outlined, text:" Gate Notofication" ),
    ListModelSetting(icon: Icons.message, text:" Add Request" ),
    ListModelSetting(icon: Icons.question_mark_outlined, text:" Gate Notofication" ),
    ListModelSetting(icon: Icons.info, text:" Gate Notofication" ),
    ListModelSetting(icon: Icons.phone, text:" Gate Notofication" ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index)=>
            GestureDetector(

              child: card_setting(
                  icon: items[index].icon,
                  txt: items[index].text),

              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Empty_Gate_Notification_View()
                ));
              },


            ),

      ),
    );
  }
}
