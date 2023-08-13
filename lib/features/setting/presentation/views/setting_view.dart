import 'package:facility_management/features/setting/presentation/views/widgets/setting_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';

class SettingView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarButtom2(text: 'More Information'),
        body: SettingBody(),
      ),
    );
  }
}




