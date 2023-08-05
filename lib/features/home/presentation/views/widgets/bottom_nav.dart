import 'package:facility_management/constants.dart';
import 'package:facility_management/features/chat/presentation/views/chat_view.dart';
import 'package:facility_management/features/home/presentation/views/home_view.dart';
import 'package:facility_management/features/payment/presentation/views/pay_view.dart';
import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> with TickerProviderStateMixin {
  int currentindex = 0;
  final List<Widget> _tabs = [
    HomeView(),
    PaymentView(),
    ChatView(),
  ];
  Widget currentScreen = HomeView();
  @override
  Widget build(BuildContext context) {
    var anim = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 500),
    );
    return Scaffold(
      extendBody: true,
      body: _tabs[currentindex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(

          currentIndex: currentindex,
          onTap: (index){
            setState(() {
              currentindex = index;
            });
          },
          margin: EdgeInsets.only(left: 10, right: 10),
          // currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          unselectedItemColor: Colors.grey[300],
          splashBorderRadius: 50,
          // onTap: _handleIndexChanged,
          dotIndicatorColor: kPrimaryColor,
          items: [
            DotNavigationBarItem(
              icon: Icon(Icons.home),
              selectedColor: kPrimaryColor,
            ),
            DotNavigationBarItem(
              icon: Image.asset(
                  'assets/icons/vuesax-bold-graph.png',
                      ),
              selectedColor: kPrimaryColor,
            ),
            DotNavigationBarItem(
              icon: Icon(Icons.person),
              selectedColor: kPrimaryColor,
            ),
          ],

        ),
      ),
    );
  }
}
