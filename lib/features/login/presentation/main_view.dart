import 'package:flutter/material.dart';
import 'package:monglish_app/features/login/presentation/widgets/custom_bottom_nav_bar_icon.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:monglish_app/features/home/presentation/home_view.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 2);

  List<Widget> _buildScreens() {
    return [
      const Center(child: Text("More View")),
      const Center(child: Text("Classes View")),
      const HomeView(),
      const Center(child: Text("Clubs View")),
      const Center(child: Text("Discussion View")),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const CustomBottomNavBarIcon(
          icon: 'assets/svgs/more_icon.svg',
          text: 'More',
          isActiveIcon: true,
        ),
        inactiveIcon: const CustomBottomNavBarIcon(
          icon: 'assets/svgs/more_icon.svg',
          text: 'More',
          isActiveIcon: false,
        ),
        onPressed: (p0) {
          debugPrint('More Pressed');
        },
      ),
      PersistentBottomNavBarItem(
        icon: const CustomBottomNavBarIcon(
          icon: 'assets/svgs/classes_icon.svg',
          text: 'Classes',
          isActiveIcon: true,
        ),
        inactiveIcon: const CustomBottomNavBarIcon(
          icon: 'assets/svgs/classes_icon.svg',
          text: 'Classes',
          isActiveIcon: false,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const CustomBottomNavBarIcon(
          icon: 'assets/svgs/dashboard_icon.svg',
          text: 'Dashboard',
          isActiveIcon: true,
        ),
        inactiveIcon: const CustomBottomNavBarIcon(
          icon: 'assets/svgs/dashboard_icon.svg',
          text: 'Dashboard',
          isActiveIcon: false,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const CustomBottomNavBarIcon(
          icon: 'assets/svgs/clubs_icon.svg',
          text: 'Clubs',
          isActiveIcon: true,
        ),
        inactiveIcon: const CustomBottomNavBarIcon(
          icon: 'assets/svgs/clubs_icon.svg',
          text: 'Clubs',
          isActiveIcon: false,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const CustomBottomNavBarIcon(
          icon: 'assets/svgs/discussion_icon.svg',
          text: 'Discussion',
          isActiveIcon: true,
        ),
        inactiveIcon: const CustomBottomNavBarIcon(
          icon: 'assets/svgs/discussion_icon.svg',
          text: 'Discussion',
          isActiveIcon: false,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style2,
      decoration: const NavBarDecoration(
        colorBehindNavBar: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 5,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      // Some Adds ---------------
      resizeToAvoidBottomInset: true,
      confineToSafeArea: true,
      // ------------- End of Adds
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 400),
          curve: Curves.fastEaseInToSlowEaseOut,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          duration: Duration(milliseconds: 400),
          curve: Curves.linearToEaseOut,
          animateTabTransition: false,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
