import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/core/utils.dart';
import 'package:hrms_clone/core/components/popup_menu/domain/show_menu_cubit.dart';
import 'package:hrms_clone/hrms_clone/assets/assets.dart';
import 'package:hrms_clone/hrms_clone/employee_dashboard/employee_dashboard.dart';
import 'package:hrms_clone/hrms_clone/employees_list/employees_list.dart';
import 'package:hrms_clone/hrms_clone/goals/goal_list.dart';
import 'package:hrms_clone/hrms_clone/goals/goal_type.dart';
import 'package:hrms_clone/hrms_clone/holidays/holidays.dart';
import 'package:hrms_clone/hrms_clone/leads/leads.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/domain/select_timeline_cubit.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/domain/show_priority_cubit.dart';
import 'package:hrms_clone/hrms_clone/promotion/promotion.dart';
import 'package:hrms_clone/hrms_clone/resignation/resignation.dart';
import 'package:hrms_clone/hrms_clone/termination/termination.dart';
import 'package:hrms_clone/hrms_clone/training/training_list/training_list.dart';
import 'package:hrms_clone/hrms_clone/training/training_list/training_type.dart';
import 'package:hrms_clone/hrms_clone/users/users.dart';

import '../hrms_clone/training/training_list/trainings.dart';
import 'components/popup_menu/popup_menu.dart';

class AppWidgets {
  AppBar appBar(BuildContext context) => AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange),
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 153, 69),
            Color.fromARGB(255, 240, 52, 114)
          ],
        ))),
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset(
            'assets/images/logo.png',
            width: 40,
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return iconButton(
                Icons.menu, () => Scaffold.of(context).openDrawer());
          },
        ),
        actions: [
          iconButton(Icons.more_vert,
              () => context.read<ShowMenuCubit>().toggleState())
        ],
      );
  Widget appDrawer(BuildContext context, List<Widget> children) => Container(
      width: Sizes().ratioWithScrWidth(context, 0.65),
      child: Drawer(
        backgroundColor: Color.fromARGB(255, 2, 27, 48),
        child: DefaultTextStyle(
            style: TextStyle(color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Sizes().ratioWithScrWidth(context, 0.04)),
              child: ListView(children: children),
            )),
      ));
  Widget iconButton(IconData icon, VoidCallback onPressed) => IconButton(
      onPressed: () => onPressed(),
      icon: Icon(
        icon,
        size: AppConstants().appbarIconSize,
      ));
  Widget appScaffold(
          {required BuildContext context,
          required bool showMenuStatus,
          required List<Widget> children,
          required ScrollController controller,
          required VoidCallback onClick,
          bool? allowPadding}) =>
      GestureDetector(
        onTap: () => onClick(),
        child: Scaffold(
          appBar: AppWidgets().appBar(context),
          backgroundColor: Color.fromARGB(255, 240, 238, 238),
          body: Stack(
            children: [
              SingleChildScrollView(
                controller: controller,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Sizes().ratioWithScrWidth(
                          context, allowPadding == null ? 0.03 : 0.0)),
                  child: Column(
                    children: children,
                  ),
                ),
              ),
              PopupMenu(showMenuStatus: showMenuStatus),
            ],
          ),
          drawer: Scrollbar(
            thickness: 8,
            radius: Radius.circular(10),
            child: AppWidgets().appDrawer(context, [
              itemHeader(context, 'Main'),
              expandedList(
                  context: context,
                  icon: Icons.alarm,
                  title: 'Dashboard',
                  children: [
                    Text('Admin Dashboard'),
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, EmployeeDashboard()),
                        child: Text('Employee Dashboard'))
                  ]),
              itemHeader(context, 'Employees'),
              expandedList(
                  context: context,
                  icon: Icons.person_2_outlined,
                  title: 'Employees',
                  children: [
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, EmployeesList()),
                        child: Text('All Employees')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, Holidays()),
                        child: Text('Holidays')),
                    Text('Employee Leave'),
                    Text('Departments'),
                    Text('Designations'),
                    Text('Timesheet'),
                    Text('Overtime')
                  ]),
              itemContent(
                  context: context,
                  leadIcon: Icons.person_add_outlined,
                  title: 'Clients',
                  height: 0.045),
              itemContent(
                  context: context,
                  leadIcon: Icons.rocket_outlined,
                  title: 'Projects',
                  height: 0.065),
              GestureDetector(
                onTap: () => Navigation().navigateTo(context, Leads()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.add_box,
                    title: 'Leads',
                    height: 0.065),
              ),
              itemHeader(context, 'HR'),
              expandedList(
                  context: context,
                  icon: Icons.card_giftcard,
                  title: 'Accounts',
                  children: [
                    Text('Invoices'),
                    Text('Payments'),
                    Text('Expenses'),
                    Text('Provident Fund'),
                    Text('Taxes')
                  ]),
              expandedList(
                  context: context,
                  icon: Icons.monetization_on,
                  title: 'Payroll',
                  children: [
                    Text('Employee Salary'),
                    Text('Payslip'),
                    Text('Payroll Items')
                  ]),
              expandedList(
                  context: context,
                  icon: Icons.circle_notifications_outlined,
                  title: 'Goals',
                  children: [
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, GoalList()),
                        child: Text('Goal List')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, GoalType()),
                        child: Text('Goal Type')),
                  ]),
              expandedList(
                  context: context,
                  icon: Icons.note_add_outlined,
                  title: 'Training',
                  children: [
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, TrainingList()),
                        child: Text('Training List')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, Trainings()),
                        child: Text('Trainers')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, TrainingType()),
                        child: Text('Training Type'))
                  ]),
              GestureDetector(
                onTap: () => Navigation().navigateTo(context, Promotion()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.mic,
                    title: 'Promotion',
                    height: 0.045),
              ),
              GestureDetector(
                onTap: () => Navigation().navigateTo(context, Resignation()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.exit_to_app_outlined,
                    title: 'Resignation',
                    height: 0.065),
              ),
              GestureDetector(
                onTap: () => Navigation().navigateTo(context, Termination()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.close_rounded,
                    title: 'Termination',
                    height: 0.065),
              ),
              itemHeader(context, 'Administration'),
              GestureDetector(
                onTap: () => Navigation().navigateTo(context, Assets()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.home,
                    title: 'Assets',
                    height: 0.065),
              ),
              GestureDetector(
                onTap: () => Navigation().navigateTo(context, Users()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.person_add_outlined,
                    title: 'Users',
                    height: 0.065),
              ),
              itemHeader(context, 'Pages'),
              expandedList(
                  context: context,
                  icon: Icons.person_3_outlined,
                  title: 'Profile',
                  children: [
                    Text('Employee Profile'),
                    Text('Client Profile'),
                  ]),
              itemContent(
                  context: context,
                  leadIcon: Icons.settings_outlined,
                  title: 'Settings',
                  height: 0.045),
              itemContent(
                  context: context,
                  leadIcon: Icons.power_settings_new,
                  title: 'Logout',
                  height: 0.065),
            ]),
          ),
        ),
      );
  Widget itemHeader(BuildContext context, String title) => Container(
      height: Sizes().ratioWithScrHeight(context, 0.05),
      alignment: Alignment.bottomLeft,
      child: Text(title));

  Widget itemContent({
    required BuildContext context,
    required IconData leadIcon,
    required String title,
    required double height,
  }) =>
      Container(
        height: Sizes().ratioWithScrHeight(context, height),
        alignment: Alignment.bottomCenter,
        child: Container(
          child: Row(
            children: [
              Icon(
                leadIcon,
                color: Colors.white,
              ),
              Spacing().horizontalSpace(context, 0.025),
              Text(title),
            ],
          ),
        ),
      );
  Widget expandedList(
          {required BuildContext context,
          required IconData icon,
          required String title,
          required List<Widget> children}) =>
      ListTileTheme(
        dense: true,
        child: Theme(
          data: Theme.of(context).copyWith(
            unselectedWidgetColor: Colors.white,
          ),
          child: ExpansionTile(
            tilePadding: EdgeInsets.zero,
            iconColor: Colors.white,
            collapsedIconColor: Colors.white,
            title: Row(
              children: [
                Icon(icon),
                Spacing().horizontalSpace(context, 0.025),
                Text(
                  title,
                  style: txtStyle(color: Colors.white),
                ),
              ],
            ),
            children: children
                .map((e) => Column(children: [
                      Row(children: [
                        Spacing().horizontalSpace(context, 0.1),
                        e
                      ]),
                      Spacing().verticalSpace(context, 0.02),
                    ]))
                .toList(),
          ),
        ),
      );
}
