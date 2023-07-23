import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:facility_management/features/home/presentation/views/widgets/search.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilies/styles.dart';
import 'list_myflat.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
       child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Search(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'My Flats',
                  style: Styles.textStyle15.copyWith(fontSize: 16, color: Colors.black),
                ),
              ),
              ListFlat(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Our Services',
                  style: Styles.textStyle15.copyWith(fontSize: 16 , color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        ),
      ],
    );
  }
}
