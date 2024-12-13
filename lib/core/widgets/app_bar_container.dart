import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 152.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [
            Color(0xFF081026),
            Color(0xFF1E3B8C),
            Color(0xFF081026),
          ],
        ),
      ),
      child: child,
    );
  }
}
