import 'package:facility_management/core/utilies/assets.dart';
import 'package:flutter/material.dart';
class SponsersList extends StatelessWidget {
  const SponsersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AssetData.sponsers.length,
        itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetData.sponsers[index],fit: BoxFit.fill,),
        ));
  }
}
