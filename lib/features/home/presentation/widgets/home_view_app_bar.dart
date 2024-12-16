import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/features/home/presentation/widgets/custom_search_text_field.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_profile_picture.dart';

class HomeViewAppBar extends StatefulWidget {
  const HomeViewAppBar({super.key});

  @override
  _HomeViewAppBarState createState() => _HomeViewAppBarState();
}

class _HomeViewAppBarState extends State<HomeViewAppBar> {
  bool _isSearchOpen = false;

  void _toggleSearch() {
    setState(() {
      _isSearchOpen = !_isSearchOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        verticalSpace(16),
        Padding(
          padding: const EdgeInsets.only(
            left: 2,
            right: 16,
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/svgs/notifications_icon.svg',
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: _isSearchOpen
                    ? MediaQuery.of(context).size.width * 0.55
                    : 0,
                height: 40.h,
                child: _isSearchOpen
                    ? CustomSearchTextField(
                        onTap: _toggleSearch,
                      )
                    : const SizedBox.shrink(),
              ),
              !_isSearchOpen
                  ? IconButton(
                      onPressed: _toggleSearch,
                      icon: SvgPicture.asset(
                        'assets/svgs/search_icon.svg',
                      ),
                    )
                  : const SizedBox.shrink(),
              const Spacer(),
              const HomeProfilePicture(),
            ],
          ),
        ),
      ],
    );
  }
}
