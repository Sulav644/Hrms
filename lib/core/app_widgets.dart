import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/core/utils.dart';
import 'package:hrms_clone/core/components/popup_menu/domain/show_menu_cubit.dart';
import 'package:hrms_clone/hrms_clone/accounts/expenses.dart';
import 'package:hrms_clone/hrms_clone/accounts/invoice.dart';
import 'package:hrms_clone/hrms_clone/accounts/payment.dart';
import 'package:hrms_clone/hrms_clone/accounts/provident_fund.dart';
import 'package:hrms_clone/hrms_clone/accounts/tax.dart';
import 'package:hrms_clone/hrms_clone/assets/assets.dart';
import 'package:hrms_clone/hrms_clone/employee_dashboard/employee_dashboard.dart';
import 'package:hrms_clone/hrms_clone/employees_list/client.dart';
import 'package:hrms_clone/hrms_clone/employees_list/components/department.dart';
import 'package:hrms_clone/hrms_clone/employees_list/designation.dart';
import 'package:hrms_clone/hrms_clone/employees_list/employee_leave.dart';
import 'package:hrms_clone/hrms_clone/employees_list/employees_list.dart';
import 'package:hrms_clone/hrms_clone/employees_list/overtime.dart';
import 'package:hrms_clone/hrms_clone/employees_list/timesheet.dart';
import 'package:hrms_clone/hrms_clone/goals/goal_list.dart';
import 'package:hrms_clone/hrms_clone/goals/goal_type.dart';
import 'package:hrms_clone/hrms_clone/holidays/holidays.dart';
import 'package:hrms_clone/hrms_clone/leads/leads.dart';
import 'package:hrms_clone/hrms_clone/payroll/employees_salary.dart';
import 'package:hrms_clone/hrms_clone/payroll/payroll_item.dart';
import 'package:hrms_clone/hrms_clone/payroll/payslip.dart';
import 'package:hrms_clone/hrms_clone/profile/client_profile.dart';
import 'package:hrms_clone/hrms_clone/promotion/promotion.dart';
import 'package:hrms_clone/hrms_clone/resignation/resignation.dart';
import 'package:hrms_clone/hrms_clone/settings/change_password.dart';
import 'package:hrms_clone/hrms_clone/settings/company_setting.dart';
import 'package:hrms_clone/hrms_clone/settings/invoice_setting.dart';
import 'package:hrms_clone/hrms_clone/settings/roles_and_permission.dart';
import 'package:hrms_clone/hrms_clone/settings/salary_setting.dart';
import 'package:hrms_clone/hrms_clone/termination/termination.dart';
import 'package:hrms_clone/hrms_clone/training/training_list/training_list.dart';
import 'package:hrms_clone/hrms_clone/training/training_list/training_type.dart';
import 'package:hrms_clone/hrms_clone/users/users.dart';
import 'package:hrms_clone/hrms_clone/view_more_projects/view_more_projects.dart';

import '../home_page.dart';
import '../hrms_clone/profile/employee_profile.dart';
import '../hrms_clone/settings/theme_setting.dart';
import '../hrms_clone/training/training_list/trainings.dart';
import 'components/popup_menu/popup_menu.dart';

class AppWidgets {
  AppBar appBar(BuildContext context) => AppBar(
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.orange),
        flexibleSpace: Container(
            decoration: const BoxDecoration(
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
  Widget appDrawer(BuildContext context, List<Widget> children) => SizedBox(
      width: Sizes().ratioWithScrWidth(context, 0.65),
      child: Drawer(
        backgroundColor: const Color.fromARGB(255, 2, 27, 48),
        child: DefaultTextStyle(
            style: const TextStyle(color: Colors.white),
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
          backgroundColor: const Color.fromARGB(255, 240, 238, 238),
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
            radius: const Radius.circular(10),
            child: AppWidgets().appDrawer(context, [
              itemHeader(context, 'Main'),
              expandedList(
                  context: context,
                  icon: Icons.alarm,
                  title: 'Dashboard',
                  children: [
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, const HomePage()),
                        child: const Text('Admin Dashboard')),
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, const EmployeeDashboard()),
                        child: const Text('Employee Dashboard'))
                  ]),
              itemHeader(context, 'Employees'),
              expandedList(
                  context: context,
                  icon: Icons.person_2_outlined,
                  title: 'Employees',
                  children: [
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, const EmployeesList()),
                        child: const Text('All Employees')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, const Holidays()),
                        child: const Text('Holidays')),
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, const EmployeeLeave()),
                        child: const Text('Employee Leave')),
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, const Department()),
                        child: const Text('Departments')),
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, const Designation()),
                        child: const Text('Designations')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, const TimeSheet()),
                        child: const Text('Timesheet')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, const OverTime()),
                        child: const Text('Overtime'))
                  ]),
              GestureDetector(
                onTap: () =>
                    Navigation().navigateTo(context, const ClientList()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.person_add_outlined,
                    title: 'Clients',
                    height: 0.045),
              ),
              GestureDetector(
                onTap: () =>
                    Navigation().navigateTo(context, const ViewMoreProjects()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.rocket_outlined,
                    title: 'Projects',
                    height: 0.065),
              ),
              GestureDetector(
                onTap: () => Navigation().navigateTo(context, const Leads()),
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
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, const Invoice()),
                        child: const Text('Invoices')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, const Payment()),
                        child: const Text('Payments')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, const Expenses()),
                        child: const Text('Expenses')),
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, const ProvidentFund()),
                        child: const Text('Provident Fund')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, const Tax()),
                        child: const Text('Taxes'))
                  ]),
              expandedList(
                  context: context,
                  icon: Icons.monetization_on,
                  title: 'Payroll',
                  children: [
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, const EmployeesSalary()),
                        child: const Text('Employee Salary')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, const PaySlip()),
                        child: const Text('Payslip')),
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, const PayRollItem()),
                        child: const Text('Payroll Items'))
                  ]),
              expandedList(
                  context: context,
                  icon: Icons.circle_notifications_outlined,
                  title: 'Goals',
                  children: [
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, const GoalList()),
                        child: const Text('Goal List')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, const GoalType()),
                        child: const Text('Goal Type')),
                  ]),
              expandedList(
                  context: context,
                  icon: Icons.note_add_outlined,
                  title: 'Training',
                  children: [
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, const TrainingList()),
                        child: const Text('Training List')),
                    GestureDetector(
                        onTap: () =>
                            Navigation().navigateTo(context, const Trainings()),
                        child: const Text('Trainers')),
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, const TrainingType()),
                        child: const Text('Training Type'))
                  ]),
              GestureDetector(
                onTap: () =>
                    Navigation().navigateTo(context, const Promotion()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.mic,
                    title: 'Promotion',
                    height: 0.045),
              ),
              GestureDetector(
                onTap: () =>
                    Navigation().navigateTo(context, const Resignation()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.exit_to_app_outlined,
                    title: 'Resignation',
                    height: 0.065),
              ),
              GestureDetector(
                onTap: () =>
                    Navigation().navigateTo(context, const Termination()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.close_rounded,
                    title: 'Termination',
                    height: 0.065),
              ),
              itemHeader(context, 'Administration'),
              GestureDetector(
                onTap: () => Navigation().navigateTo(context, const Assets()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.home,
                    title: 'Assets',
                    height: 0.065),
              ),
              GestureDetector(
                onTap: () => Navigation().navigateTo(context, const Users()),
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
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, const EmployeeProfile()),
                        child: const Text('Employee Profile')),
                    GestureDetector(
                        onTap: () => Navigation()
                            .navigateTo(context, const ClientProfile()),
                        child: const Text('Client Profile')),
                  ]),
              GestureDetector(
                onTap: () =>
                    Navigation().navigateTo(context, const CompanySetting()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.settings_outlined,
                    title: 'Settings',
                    height: 0.045),
              ),
              itemContent(
                  context: context,
                  leadIcon: Icons.power_settings_new,
                  title: 'Logout',
                  height: 0.065),
            ]),
          ),
        ),
      );
  Widget settingScaffold(
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
          backgroundColor: const Color.fromARGB(255, 240, 238, 238),
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
            radius: const Radius.circular(10),
            child: AppWidgets().appDrawer(context, [
              GestureDetector(
                onTap: () => Navigation().navigateTo(context, const HomePage()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.person_add_outlined,
                    title: 'Back to Home',
                    height: 0.045),
              ),
              itemHeader(context, 'Settings'),
              GestureDetector(
                onTap: () =>
                    Navigation().navigateTo(context, const CompanySetting()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.rocket_outlined,
                    title: 'Company Settings',
                    height: 0.065),
              ),
              GestureDetector(
                onTap: () =>
                    Navigation().navigateTo(context, const ThemeSetting()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.rocket_outlined,
                    title: 'Theme Settings',
                    height: 0.065),
              ),
              GestureDetector(
                onTap: () => Navigation()
                    .navigateTo(context, const RolesAndPermission()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.rocket_outlined,
                    title: 'Roles & Permissions',
                    height: 0.065),
              ),
              GestureDetector(
                onTap: () =>
                    Navigation().navigateTo(context, const InvoiceSetting()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.rocket_outlined,
                    title: 'Invoice Settings',
                    height: 0.065),
              ),
              GestureDetector(
                onTap: () => Navigation().navigateTo(
                    context,
                    SalarySetting(
                      switchPadLeft: Sizes().ratioWithScrWidth(context, 0.11),
                      textPadLeft: Sizes().ratioWithScrWidth(context, 0.04),
                    )),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.rocket_outlined,
                    title: 'Salary Settings',
                    height: 0.065),
              ),
              GestureDetector(
                onTap: () =>
                    Navigation().navigateTo(context, const ChangePassword()),
                child: itemContent(
                    context: context,
                    leadIcon: Icons.rocket_outlined,
                    title: 'Change Password',
                    height: 0.065),
              ),
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
