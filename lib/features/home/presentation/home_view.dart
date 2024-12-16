import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/helpers/spacing.dart';
import 'package:monglish_app/core/theming/colors_manager.dart';
import 'package:monglish_app/core/theming/styles.dart';
import 'package:monglish_app/core/widgets/app_bar_container.dart';
import 'package:monglish_app/features/home/logic/students_cubit/students_cubit.dart';
import 'package:monglish_app/features/home/logic/students_cubit/students_state.dart';
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
    DateTime.utc(2024, 12, 3): ['Reading Club at 5 PM'],
    DateTime.utc(2024, 12, 11): ['Movie Club at 5 PM'],
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
          child: BlocBuilder<StudentsCubit, StudentsState>(
            buildWhen: (previous, current) =>
                current is Loading || current is Success || current is Error,
            builder: (context, state) {
              return state.maybeWhen(
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                success: (specializationsResponseModel) {
                  return Stack(
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
                                child: Column(
                                  children: [
                                    verticalSpace(16),
                                    const HomePersonalInfoSection(),
                                    verticalSpace(16),
                                    const HomeCurrentLevelSection(),
                                    verticalSpace(16),
                                    const HomePackageClubsSection(),
                                    verticalSpace(16),

                                    // Table Calendar
                                    HomeViewColoredContainer(
                                      color: const Color(0xFFFFFFFF),
                                      child: TableCalendar(
                                        firstDay: DateTime.utc(2024, 1, 1),
                                        lastDay: DateTime.utc(2025, 12, 31),
                                        focusedDay: _focusedDay,
                                        calendarFormat: _calendarFormat,
                                        selectedDayPredicate: (day) =>
                                            isSameDay(_selectedDay, day),
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
                                        onDaySelected:
                                            (selectedDay, focusedDay) {
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
                                    if (_selectedDay != null)
                                      _buildEventList(_selectedDay!),

                                    verticalSpace(16),
                                    const HomeLevelSection(),
                                    verticalSpace(16),
                                    const HomeRewardsSection(),
                                    verticalSpace(16),
                                    const HomeFeedbackSection(),
                                    verticalSpace(12),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                error: (errorHandler) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "state",
                          style: Styles.font12BlackRegular,
                        ),
                        verticalSpace(16),
                        ElevatedButton(
                          onPressed: () {
                            context.read<StudentsCubit>().getStudents();
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                },
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ),
      ),
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
      duration: const Duration(milliseconds: 400), // Animation duration
      switchInCurve: Curves.easeIn, // Curve for appearing animation
      switchOutCurve: Curves.easeOut, // Curve for disappearing animation
      child: events.isEmpty
          ? const SizedBox.shrink() // Return an empty widget if no events
          : Align(
              alignment: Alignment.centerLeft,
              key: ValueKey(events), // Ensure animation triggers correctly
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
                                  style: Styles.font13BlackMedium,
                                ),
                                Text(
                                  'event',
                                  style: Styles.font13BlackMedium,
                                ),
                                Text(
                                  'event',
                                  style: Styles.font13BlackMedium,
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
