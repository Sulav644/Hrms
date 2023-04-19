import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/core/utils.dart';
import 'package:hrms_clone/core/components/popup_menu/domain/show_menu_cubit.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/domain/select_timeline_cubit.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/domain/show_priority_cubit.dart';

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
  Widget appScaffold({
    required BuildContext context,
    required bool showMenuStatus,
    required List<Widget> children,
    required ScrollController controller,
    required VoidCallback onClick,
  }) =>
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
                      horizontal: Sizes().ratioWithScrWidth(context, 0.03)),
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
              itemContent(
                  context: context,
                  leadIcon: Icons.alarm,
                  title: 'Dashboard',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: true),
              itemHeader(context, 'Employees'),
              itemContent(
                  context: context,
                  leadIcon: Icons.person_2_outlined,
                  title: 'Employees',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: true),
              itemContent(
                  context: context,
                  leadIcon: Icons.person_add_outlined,
                  title: 'Clients',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: false),
              itemContent(
                  context: context,
                  leadIcon: Icons.rocket_outlined,
                  title: 'Projects',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: true),
              itemContent(
                  context: context,
                  leadIcon: Icons.add_box,
                  title: 'Leads',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: false),
              itemHeader(context, 'HR'),
              itemContent(
                  context: context,
                  leadIcon: Icons.card_giftcard,
                  title: 'Accounts',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: true),
              itemContent(
                  context: context,
                  leadIcon: Icons.monetization_on,
                  title: 'Payroll',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: true),
              itemContent(
                  context: context,
                  leadIcon: Icons.circle_notifications_outlined,
                  title: 'Goals',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: true),
              itemContent(
                  context: context,
                  leadIcon: Icons.note_add_outlined,
                  title: 'Training',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: true),
              itemContent(
                  context: context,
                  leadIcon: Icons.mic,
                  title: 'Promotion',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: false),
              itemContent(
                  context: context,
                  leadIcon: Icons.exit_to_app_outlined,
                  title: 'Resignation',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: false),
              itemContent(
                  context: context,
                  leadIcon: Icons.close_rounded,
                  title: 'Termination',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: false),
              itemHeader(context, 'Administration'),
              itemContent(
                  context: context,
                  leadIcon: Icons.home,
                  title: 'Assets',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: false),
              itemContent(
                  context: context,
                  leadIcon: Icons.person_add_outlined,
                  title: 'Users',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: false),
              itemHeader(context, 'Pages'),
              itemContent(
                  context: context,
                  leadIcon: Icons.person_3_outlined,
                  title: 'Profile',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: true),
              itemContent(
                  context: context,
                  leadIcon: Icons.settings_outlined,
                  title: 'Settings',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: false),
              itemContent(
                  context: context,
                  leadIcon: Icons.power_settings_new,
                  title: 'Logout',
                  trailIcon: Icons.arrow_forward_ios,
                  showTrailIcon: false),
            ]),
          ),
        ),
      );
  Widget itemHeader(BuildContext context, String title) => Container(
      height: Sizes().ratioWithScrHeight(context, 0.05),
      alignment: Alignment.bottomLeft,
      child: Text(title));

  Widget itemContent(
          {required BuildContext context,
          required IconData leadIcon,
          required String title,
          required IconData trailIcon,
          required bool showTrailIcon}) =>
      Container(
        height: Sizes().ratioWithScrHeight(context, 0.05),
        alignment: Alignment.bottomCenter,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Icon(
                leadIcon,
                color: Colors.white,
              ),
              Spacing().horizontalSpace(context, 0.025),
              Text(title),
            ],
          ),
          if (showTrailIcon)
            Row(
              children: [
                if (title == 'Employees')
                  CircleAvatar(
                    radius: 6,
                  ),
                Spacing().horizontalSpace(context, 0.03),
                Icon(
                  trailIcon,
                  size: 18,
                  color: Colors.white,
                ),
              ],
            )
        ]),
      );
}
