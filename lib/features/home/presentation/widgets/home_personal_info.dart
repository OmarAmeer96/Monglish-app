import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_colored_container_icon_and_text_item.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_profile_picture.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_view_colored_container.dart';

class HomePersonalInfo extends StatelessWidget {
  const HomePersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomeViewColoredContainer(
      color: const Color(0x7FA3D0FF),
      child: Column(
        children: [
          Row(
            children: [
              const HomeProfilePicture(),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Omar Ameer",
                    style: Styles.font16BlackBold.copyWith(
                      color: const Color(0xFF434050),
                    ),
                  ),
                  Text(
                    "5545",
                    style: Styles.font14OrangeMedium.copyWith(
                      color: const Color(0xFF434050),
                    ),
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(12),
          Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/phone_icon.svg',
                      text: "+20 15 5411 1002",
                    ),
                  ),
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/birth_icon.svg',
                      text: "26/8/2002",
                    ),
                  )
                ],
              ),
              verticalSpace(12),
              const Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/email_icon.svg',
                      text: "omar.ameer244@gmail.com",
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/nationality_icon.svg',
                      text: "Egyptian",
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/gender_icon.svg',
                      text: "Male",
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
