import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monglish_app/core/theming/font_family_helper.dart';
import 'package:monglish_app/core/theming/styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 10,
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: 'Search...',
        hintStyle: Styles.font12BlackRegular.copyWith(
          fontSize: 14,
          color: Colors.grey,
          fontFamily: FontFamilyHelper.quicksandMedium,
        ),
        prefixIcon: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: SvgPicture.asset(
            'assets/svgs/search_bar_search_icon.svg',
            width: 18,
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(
              'assets/svgs/search_bar_close_icon.svg',
              width: 14,
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
