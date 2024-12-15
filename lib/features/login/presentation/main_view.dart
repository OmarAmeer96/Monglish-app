import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/colors_manager.dart';
import 'package:monglish_app/features/login/presentation/widgets/custom_bottom_nav_bar_icon.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:monglish_app/features/home/presentation/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 2);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> _buildScreens() {
    return [
      Center(
        child: TextButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: const Text("Open More Drawer"),
        ),
      ),
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
        onPressed: (context) {
          _scaffoldKey.currentState?.openDrawer();
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
    return Scaffold(
      key: _scaffoldKey,
      drawer: _buildDrawer(),
      body: PersistentTabView(
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
        resizeToAvoidBottomInset: true,
        confineToSafeArea: true,
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
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      width: MediaQuery.of(context).size.width * 1,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, 1.00),
            end: Alignment(0, -1),
            colors: [
              ColorsManager.mainGradientColorTopAndBottom,
              ColorsManager.mainGradientColorMid,
              ColorsManager.mainGradientColorTopAndBottom,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // const UserAccountsDrawerHeader(
            //   decoration: BoxDecoration(color: Color(0xFF0A369D)),
            //   accountName: Text("Ahmed Mohamed"),
            //   accountEmail: Text("29501"),
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage:
            //         AssetImage('assets/images/profile_picture.png'),
            //   ),
            // ),
            verticalSpace(60),
            Container(
              width: MediaQuery.of(context).size.width * 0.94,
              height: 83,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    topLeft: Radius.circular(100),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: SvgPicture.asset('assets/svgs/close_icon.svg'),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.dashboard,
                color: Colors.white,
              ),
              title: const Text(
                "Dashboard",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.school,
                color: Colors.white,
              ),
              title: const Text(
                "Schools",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.class_,
                color: Colors.white,
              ),
              title: const Text(
                "Classes",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.group,
                color: Colors.white,
              ),
              title: const Text(
                "Clubs",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.payment,
                color: Colors.white,
              ),
              title: const Text(
                "Payments",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.chat,
                color: Colors.white,
              ),
              title: const Text(
                "Discussion",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: const Text(
                "Settings",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
