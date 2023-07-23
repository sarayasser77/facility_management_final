import 'package:facility_management/core/utilies/assets.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/list_item.dart';
class GridItem extends StatelessWidget {
   GridItem({Key? key , required this.index}) : super(key: key);
 int index=0;
  @override
  Widget build(BuildContext context) {
    return HomeItem(
      text: services[index],
      imagePath: AssetImage(AssetData.services[index]),
    );
  }

   final services = [
    "Water",
    "Electricity",
    "Maintenance",
    "Parking",
    "Club Renewal",
    "Others"
  ];
}
