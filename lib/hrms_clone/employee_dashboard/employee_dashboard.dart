import 'package:flutter/material.dart';
import 'package:hrms_clone/core/utils.dart';
import 'package:hrms_clone/hrms_clone/employee_dashboard/components/apply_leave.dart';
import 'package:hrms_clone/hrms_clone/employee_dashboard/components/apply_time_off.dart';
import 'package:hrms_clone/hrms_clone/employee_dashboard/components/total_pending_task.dart';
import 'package:hrms_clone/hrms_clone/employee_dashboard/components/upcoming_holiday.dart';
import 'package:hrms_clone/hrms_clone/employee_dashboard/components/welcome_board.dart';
import 'package:hrms_clone/hrms_clone/employee_dashboard/components/working_status_detail.dart';
import 'package:hrms_clone/hrms_clone/employee_dashboard/data/working_status_detail.dart';
import '../../core/app_widgets.dart';

List<WorkingStatusDetail> todayWorkingStatus = [
  const WorkingStatusDetail(
      icon: Icons.time_to_leave,
      workStatus: 'Richard Miles is off sick today',
      person: AssetImage('assets/images/member_list/downloadTwo.jpg')),
  const WorkingStatusDetail(
      icon: Icons.business,
      workStatus: 'You are away today',
      person: AssetImage('assets/images/member_list/downloadThree.jpg')),
  const WorkingStatusDetail(
      icon: Icons.task,
      workStatus: 'You are working from home today',
      person: AssetImage('assets/images/member_list/downloadFour.jpg'))
];
List<WorkingStatusDetail> tomorrowWorkingStatus = [
  const WorkingStatusDetail(
      icon: Icons.time_to_leave,
      workStatus: '2 people will be away tomorrow',
      persons: [
        AssetImage('assets/images/member_list/downloadTwo.jpg'),
        AssetImage('assets/images/member_list/downloadThree.jpg')
      ]),
];
List<WorkingStatusDetail> nextWeekWorkingStatus = [
  const WorkingStatusDetail(
      icon: Icons.time_to_leave,
      workStatus: '2 people are going to be away',
      persons: [
        AssetImage('assets/images/member_list/downloadFour.jpg'),
        AssetImage('assets/images/member_list/downloadFive.jpg')
      ]),
  const WorkingStatusDetail(
    icon: Icons.person_add,
    workStatus: 'Your first day is going to be on Thursday',
    person: AssetImage('assets/images/member_list/download.jpg'),
  ),
  const WorkingStatusDetail(
      icon: Icons.calendar_month,
      workStatus: "It's Spring Bank Holiday on Monday",
      showPerson: false),
];

class EmployeeDashboard extends StatefulWidget {
  const EmployeeDashboard({super.key});

  @override
  State<EmployeeDashboard> createState() => _EmployeeDashboardState();
}

class _EmployeeDashboardState extends State<EmployeeDashboard> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return AppWidgets().appScaffold(
        context: context,
        showMenuStatus: showMenuStatus,
        controller: scrollController,
        onClick: () {},
        allowPadding: false,
        children: [
          const WelcomeBoard(),
          Spacing().verticalSpace(context, 0.055),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Sizes().ratioWithScrWidth(context, 0.04)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'TODAY',
                      style: txtStyle(size: 20, weight: FontWeight.w600),
                    ),
                  ],
                ),
                Spacing().verticalSpace(context, 0.02),
                ...todayWorkingStatus
                    .map(
                      (e) => WorkingStatusDetailWidget(e: e),
                    )
                    .toList(),
                Spacing().verticalSpace(context, 0.035),
                Row(
                  children: [
                    Text(
                      'TOMORROW',
                      style: txtStyle(size: 20, weight: FontWeight.w600),
                    ),
                  ],
                ),
                Spacing().verticalSpace(context, 0.015),
                ...tomorrowWorkingStatus
                    .map(
                      (e) => WorkingStatusDetailWidget(e: e),
                    )
                    .toList(),
                Spacing().verticalSpace(context, 0.035),
                Row(
                  children: [
                    Text(
                      'NEXT SEVEN DAYS',
                      style: txtStyle(size: 20, weight: FontWeight.w600),
                    ),
                  ],
                ),
                Spacing().verticalSpace(context, 0.015),
                ...nextWeekWorkingStatus
                    .map(
                      (e) => WorkingStatusDetailWidget(e: e),
                    )
                    .toList(),
                const TotalPendingTasks(),
                const ApplyLeave(),
                const ApplyTimeOff(),
                const UpcomingHoliday(),
              ],
            ),
          ),
          Spacing().verticalSpace(context, 0.1)
        ]);
  }
}
