import 'package:flutter/material.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/features/home/data/models/students_model/students.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_colored_container_icon_and_text_item.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_profile_picture.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_view_colored_container.dart';

class HomePersonalInfoSection extends StatelessWidget {
  const HomePersonalInfoSection({
    super.key,
    required this.studentsResponse,
  });

  final Students studentsResponse;

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
                    studentsResponse.data!.name!,
                    style: Styles.font16BlackBold.copyWith(
                      color: const Color(0xFF434050),
                    ),
                  ),
                  Text(
                    studentsResponse.data!.code!,
                    style: Styles.font14OrangeMedium.copyWith(
                      color: const Color(0xFF434050),
                    ),
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(14),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/phone_icon.svg',
                      title: studentsResponse.data!.mobile!,
                    ),
                  ),
                  const Expanded(
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/birth_icon.svg',
                      title: "26/8/2002",
                    ),
                  )
                ],
              ),
              verticalSpace(12),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/email_icon.svg',
                      title: studentsResponse.data!.email!,
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/nationality_icon.svg',
                      title: "Egyptian",
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: HomeColoredContainerIconAndTextItem(
                      icon: 'assets/svgs/gender_icon.svg',
                      title: "Male",
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
