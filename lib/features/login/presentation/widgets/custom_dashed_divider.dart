import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class CustomDashedDivider extends StatelessWidget {
  const CustomDashedDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      lineLength: double.infinity,
      lineThickness: 1.0,
      dashLength: 2.5,
      // ignore: deprecated_member_use
      dashColor: Colors.white.withOpacity(0.5),
      dashGapColor: Colors.transparent,
    );
  }
}
