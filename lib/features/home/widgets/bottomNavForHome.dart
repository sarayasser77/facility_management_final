import 'package:facility_management/constants.dart';
import 'package:facility_management/features/home/views/HomeScreen.dart';
import 'package:facility_management/features/home/views/discoverScreen.dart';
import 'package:facility_management/features/home/views/moreScreen.dart';
import 'package:facility_management/features/home/views/servicesScreen.dart';
import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';


class BottomNavBarForHome extends StatefulWidget {
  const BottomNavBarForHome({Key? key}) : super(key: key);

  @override
  State<BottomNavBarForHome> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBarForHome> with TickerProviderStateMixin {
  int currentIndex = 0;
  final List<Widget> _tabs = const [
    HomeScreen(),
    ServicesScreen(),
    DiscoverScreen(),
    MoreScreen()
  ];
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    var anim = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 500),
    );
    return Scaffold(
      extendBody: true,
      body: _tabs[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(

          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex = index;
            });
          },
          margin: const EdgeInsets.only(left: 10, right: 10),
          // currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          unselectedItemColor: Colors.grey[300],
          splashBorderRadius: 50,
          // onTap: _handleIndexChanged,
          dotIndicatorColor: kPrimaryColor,
          items: [
            DotNavigationBarItem(
              icon:const Icon(Icons.home),
              selectedColor: kPrimaryColor,
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.view_carousel_sharp),
              selectedColor: kPrimaryColor,
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.map),
              selectedColor: kPrimaryColor,
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.more_horiz),
              selectedColor: kPrimaryColor,
            ),
          ],

        ),
      ),
    );
  }
}
