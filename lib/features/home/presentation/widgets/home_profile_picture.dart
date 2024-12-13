import 'package:flutter/material.dart';

class HomeProfilePicture extends StatelessWidget {
  const HomeProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0xFFFE7700),
      radius: 26,
      child: Image.asset(
        'assets/images/profile_picture.png',
        width: 46,
      ),
    );
  }
}
