import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FadingLogo extends StatelessWidget {
  const FadingLogo({
    super.key,
    required this.opacityAnimation,
    required this.image,
    required this.height,
  });

  final Animation<double> opacityAnimation;
  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: AnimatedBuilder(
        animation: opacityAnimation,
        builder: (context, _) {
          return Opacity(
            opacity: opacityAnimation.value,
            child: image.endsWith('.png')
                ? Image.asset(
                    image,
                  )
                : SvgPicture.asset(
                    image,
                    height: height,
                  ),
          );
        },
      ),
    );
  }
}
