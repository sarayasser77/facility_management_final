import 'package:facility_management/core/utilies/assets.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/home_item.dart';
import 'package:flutter/material.dart';

class GridItemSetting extends StatelessWidget {
  GridItemSetting({Key? key , required this.index}) : super(key: key);
  int index=0;
  @override
  Widget build(BuildContext context) {
    return HomeItemSetting(
      text: services[index],
      imagePath: AssetImage(AssetData.setting[index],),
    );
  }

  final services = [
    "Credit Service",
    "Pre_Delivery Service",
    "Legal Services",
    "Entrance Activation",
    "Hosting Relatives",
    "Unit services",
    "Security Services",
  ];
}
