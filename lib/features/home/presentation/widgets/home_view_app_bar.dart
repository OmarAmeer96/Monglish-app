import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_profile_picture.dart';

class HomeViewAppBar extends StatefulWidget {
  const HomeViewAppBar({super.key});

  @override
  _HomeViewAppBarState createState() => _HomeViewAppBarState();
}

class _HomeViewAppBarState extends State<HomeViewAppBar>
    with SingleTickerProviderStateMixin {
  bool _isSearchOpen = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  void _toggleSearch() {
    setState(() {
      _isSearchOpen = !_isSearchOpen;
      if (_isSearchOpen) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
                width: _isSearchOpen
                    ? MediaQuery.of(context).size.width * 0.5
                    : 0.0,
                curve: Curves.easeInOut,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: _toggleSearch,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: _toggleSearch,
                icon: SvgPicture.asset(
                  'assets/svgs/search_icon.svg',
                ),
              ),
              const Spacer(),
              const HomeProfilePicture(),
            ],
          ),
        ),
      ],
    );
  }
}
