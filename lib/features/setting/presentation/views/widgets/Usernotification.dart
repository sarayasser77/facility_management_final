import 'package:facility_management/features/setting/presentation/viewmodel/addcubitstates.dart';
import 'package:facility_management/features/setting/presentation/viewmodel/addtonotificationcubit.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/datamodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../new_gate.dart';
import 'fully_gate_notification.dart';

class EmptyNotificationListView extends StatelessWidget {
  @override

  final cubit=AddCubit();
  Widget build(BuildContext context) {
    return BlocConsumer<AddCubit,AddtoNotification>(
      builder: (context,state){
        return

        Column(

          children: [
  const Spacer(flex: 3,),
              const Text("You don't have any invitations at\n \n           that moment",style: TextStyle(color: LIGHT_GREY)),
            Spacer(flex: 2,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.h,),
              child: CustomButton(
                height: 60.h,
                backgroundColor: kPrimaryColor, text: 'Create New Gate Notification ', func: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>New_Gate()));

              }, width: double.infinity,),
            ),
            Spacer()
          ],
        );

      },
      listener: (context,state){

      },
    );
  }
}