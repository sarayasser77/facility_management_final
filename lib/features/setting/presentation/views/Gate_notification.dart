import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/Usernotification.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/datamodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gate_Notification_View extends StatelessWidget {
Gate_Notification_View({required this.nav});

  Function nav;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
appBar: AppBarButtom2(text: 'Gate Notification',),
        body: UserNotificationListView()

      ),
    );
  }
}


