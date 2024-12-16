import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/helpers/constants.dart';
import 'package:monglish_app/core/helpers/shared_pref_helper.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/colors_manager.dart';
import 'package:monglish_app/core/theming/font_family_helper.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/login/presentation/widgets/custom_bottom_nav_bar_icon.dart';
import 'package:monglish_app/features/login/presentation/widgets/custom_dashed_divider.dart';
import 'package:monglish_app/features/login/presentation/widgets/drawer_item.dart';
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

  String? userName;
  String? userCode;

  @override
  void initState() {
    super.initState();
    _loadUserDetails();
  }

  Future<void> _loadUserDetails() async {
    // Fetch user details from SharedPreferences
    final name = await SharedPrefHelper.getString(SharedPrefKeys.userName);
    final code = await SharedPrefHelper.getString(SharedPrefKeys.userCode);

    setState(() {
      userName = name;
      userCode = code;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
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
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 60),
                Container(
                  padding: const EdgeInsets.all(6),
                  width: MediaQuery.of(context).size.width * 0.94,
                  height: 80,
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
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFFFE7700),
                        radius: 33,
                        child: Image.asset(
                          'assets/images/profile_picture.png',
                          width: 60,
                        ),
                      ),
                      horizontalSpace(10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userName ?? 'Omar',
                            style: Styles.font15WhiteBold,
                          ),
                          verticalSpace(8),
                          Text(
                            userCode ?? '00000',
                            style: Styles.font15WhiteBold.copyWith(
                              // ignore: deprecated_member_use
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: FontFamilyHelper.montserratRegular,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      verticalSpace(60),
                      DrawerItem(
                        icon: 'assets/svgs/drawer_dashboard_icon.svg',
                        title: 'Dashboard',
                        onTap: () {
                          debugPrint("Dashboard Clicked");
                        },
                      ),
                      verticalSpace(18),
                      const CustomDashedDivider(),
                      verticalSpace(18),
                      DrawerItem(
                        icon: 'assets/svgs/drawer_schools_icon.svg',
                        title: 'Schools',
                        onTap: () {
                          debugPrint("Schools Clicked");
                        },
                      ),
                      verticalSpace(18),
                      const CustomDashedDivider(),
                      verticalSpace(18),
                      DrawerItem(
                        icon: 'assets/svgs/drawer_classes_icon.svg',
                        title: 'Classes',
                        onTap: () {
                          debugPrint("Classes Clicked");
                        },
                      ),
                      verticalSpace(18),
                      const CustomDashedDivider(),
                      verticalSpace(18),
                      DrawerItem(
                        icon: 'assets/svgs/drawer_clubs_icon.svg',
                        title: 'Clubs',
                        onTap: () {
                          debugPrint("Clubs Clicked");
                        },
                      ),
                      verticalSpace(18),
                      const CustomDashedDivider(),
                      verticalSpace(18),
                      DrawerItem(
                        icon: 'assets/svgs/drawer_payments_icon.svg',
                        title: 'Payments',
                        onTap: () {
                          debugPrint("Payments Clicked");
                        },
                      ),
                      verticalSpace(18),
                      const CustomDashedDivider(),
                      verticalSpace(18),
                      DrawerItem(
                        icon: 'assets/svgs/drawer_discussion_icon.svg',
                        title: 'Discussion',
                        onTap: () {
                          debugPrint("Discussion Clicked");
                        },
                      ),
                      verticalSpace(18),
                      const CustomDashedDivider(),
                      verticalSpace(18),
                      DrawerItem(
                        icon: 'assets/svgs/drawer_settings_icon.svg',
                        title: 'Settings',
                        onTap: () {
                          debugPrint("Settings Clicked");
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                width: 54,
                decoration: const BoxDecoration(
                  color: ColorsManager.mainOrange,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60 + 40 - 11 - 13),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(
                        'assets/svgs/close_icon.svg',
                        height: 20,
                      ),
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     Navigator.pop(context);
                    //   },
                    //   child: SvgPicture.asset(
                    //     'assets/svgs/close_icon.svg',
                    //     height: 20,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 56,
              child: SvgPicture.asset(
                'assets/svgs/drawer_letters.svg',
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
