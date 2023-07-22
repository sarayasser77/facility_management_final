import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:facility_management/features/home/presentation/views/widgets/search.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Search(),
        ],
      ),
    );
  }
}
