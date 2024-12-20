import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/colors_manager.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/core/widgets/app_bar_container.dart';
import 'package:monglish_app/core/widgets/custom_fading_widget.dart';
import 'package:monglish_app/core/widgets/custom_main_button.dart';
import 'package:monglish_app/features/home/logic/students_cubit/students_cubit.dart';
import 'package:monglish_app/features/home/logic/students_cubit/students_state.dart';
import 'package:monglish_app/features/home/presentation/widgets/custom_home_item_loading_widget.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_current_level_section.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_feed_back_section.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_level_section.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_package_clubs_section.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_personal_info_section.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_rewards_section.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_view_app_bar.dart';
import 'package:monglish_app/features/home/presentation/widgets/home_view_colored_container.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // Event Map: Date as Key, List of Events as Value
  final Map<DateTime, List<String>> _events = {
    DateTime.utc(2024, 12, 3): ['Reading Club'],
    DateTime.utc(2024, 12, 11): ['Movie Club'],
  };

  @override
  void initState() {
    super.initState();
    context.read<StudentsCubit>().getStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: RefreshIndicator(
          color: ColorsManager.mainOrange,
          displacement: 10,
          onRefresh: () async {
            context.read<StudentsCubit>().getStudents();
          },
          child: Stack(
            children: [
              const Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AppBarContainer(
                  child: Center(
                    child: HomeViewAppBar(),
                  ),
                ),
              ),
              Positioned(
                top: 130.h,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xfff1f5ff),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 0,
                    ),
                    child: Scrollbar(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: BlocBuilder<StudentsCubit, StudentsState>(
                          buildWhen: (previous, current) =>
                              current is Loading ||
                              current is Success ||
                              current is Error,
                          builder: (context, state) {
                            return state.maybeWhen(
                              loading: () {
                                return setupsLoadingState();
                              },
                              success: (studentsResponse) {
                                // return setupsLoadingState();
                                // return setupErrorState(context);
                                return setupSuccessState(studentsResponse);
                              },
                              error: (errorHandler) {
                                return setupErrorState(context);
                              },
                              orElse: () => const SizedBox.shrink(),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget setupsLoadingState() {
    return const CustomFadingWidget(
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: CustomHomeItemLoadingWidget(),
      ),
    );
  }

  Widget setupErrorState(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.3,
        left: 16,
        right: 16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'An error occurred while fetching data, please try again later',
            textAlign: TextAlign.center,
            style: Styles.font18BlackBold.copyWith(
              fontSize: 20,
            ),
          ),
          verticalSpace(16),
          CustomMainButton(
            buttonWidth: 150.w,
            textStyle: Styles.font20WhiteBold.copyWith(
              fontSize: 20,
            ),
            onPressed: () {
              context.read<StudentsCubit>().getStudents();
            },
            buttonText: 'Retry',
          ),
        ],
      ),
    );
  }

  Widget setupSuccessState(studentsResponse) {
    return Column(
      children: [
        verticalSpace(16),
        HomePersonalInfoSection(
          studentsResponse: studentsResponse,
        ),
        verticalSpace(16),
        HomeCurrentLevelSection(
          studentsResponse: studentsResponse,
        ),
        verticalSpace(16),
        HomePackageClubsSection(
          studentsResponse: studentsResponse,
        ),
        verticalSpace(16),

        // Table Calendar
        HomeViewColoredContainer(
          color: const Color(0xFFFFFFFF),
          child: TableCalendar(
            firstDay: DateTime.utc(2024, 1, 1),
            lastDay: DateTime.utc(2025, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            eventLoader: _getEventsForDay,
            calendarStyle: const CalendarStyle(
              todayDecoration: BoxDecoration(
                color: ColorsManager.mainBlue,
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: ColorsManager.mainOrange,
                shape: BoxShape.circle,
              ),
            ),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ),
        ),
        verticalSpace(16),

        // Event List Section
        if (_selectedDay != null) _buildEventList(_selectedDay!),

        verticalSpace(16),
        HomeLevelSection(
          studentsResponse: studentsResponse,
        ),
        verticalSpace(16),
        HomeRewardsSection(
          studentsResponse: studentsResponse,
        ),
        verticalSpace(16),
        HomeFeedbackSection(
          studentsResponse: studentsResponse,
        ),
        verticalSpace(12),
      ],
    );
  }

  // Function to Load Events for a Given Day
  List<String> _getEventsForDay(DateTime day) {
    return _events[DateTime.utc(day.year, day.month, day.day)] ?? [];
  }

  // Event List Widget
  Widget _buildEventList(DateTime day) {
    final events = _getEventsForDay(day);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
      child: events.isEmpty
          ? const SizedBox.shrink()
          : Align(
              alignment: Alignment.centerLeft,
              key: ValueKey(events),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...events.map(
                    (event) => Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: ColorsManager.mainOrangeShade,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 6,
                            height: 30,
                            decoration: const ShapeDecoration(
                              color: ColorsManager.mainOrange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  bottomLeft: Radius.circular(4),
                                ),
                              ),
                            ),
                          ),
                          horizontalSpace(12),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  event,
                                  style: Styles.font12BlackMedium,
                                ),
                                Text(
                                  'Tuesday 3/12/2024',
                                  style: Styles.font12BlackMedium,
                                ),
                                Text(
                                  '5 PM : 6 PM',
                                  style: Styles.font12BlackMedium,
                                ),
                              ],
                            ),
                          ),
                          horizontalSpace(10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
