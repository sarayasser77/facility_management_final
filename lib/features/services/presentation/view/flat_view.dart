import 'package:facility_management/constants.dart';
import 'package:facility_management/core/utilies/styles.dart';
import 'package:facility_management/features/services/presentation/view/widgets/flat_body.dart';
import 'package:facility_management/features/services/presentation/view/widgets/services_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';
class FlatView extends StatelessWidget {
  const FlatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarButtom2(text: '',columnText: Column(
          children: [
            Text("My Flat",style:Styles.textStyle16 ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text("Madinty",style:Styles.textStyle12.copyWith(color:LIGHT_GREY ) ),
            ),
          ],
        ),),
        body: FlatBody(),
      ),
    );
  }
}