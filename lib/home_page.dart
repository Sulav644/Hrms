import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/hrms_clone/data/detail_banner.dart';
import 'package:hrms_clone/hrms_clone/domain/components/detail_banner.dart';
import 'package:hrms_clone/hrms_clone/domain/components/popup_menu.dart';
import 'package:hrms_clone/hrms_clone/domain/bloc/show_menu_cubit.dart';
import 'package:hrms_clone/hrms_clone/domain/components/status_change_banner.dart';

import 'core/app_widgets.dart';
import 'core/utils.dart';

List<DetailBanner> bannerList = [
  DetailBanner(icon: Icons.person, count: 112, title: 'Projects'),
  DetailBanner(icon: Icons.person, count: 2, title: 'Clients'),
  DetailBanner(icon: Icons.person, count: 37, title: 'Tasks'),
  DetailBanner(icon: Icons.person, count: 218, title: 'Employees'),
];
List<StatusChangeBanner> statusChangeBannerList = [
  StatusChangeBanner(
      title: 'New Employees',
      rateChange: 10,
      valueChanged: RateChanged.increased(),
      isPriceCount: false,
      currentCount: 10,
      totalOrPrevious: 'Overall Employees',
      totalCount: 218),
  StatusChangeBanner(
      title: 'Earnings',
      rateChange: 12.5,
      valueChanged: RateChanged.increased(),
      isPriceCount: true,
      currentCount: 142300,
      totalOrPrevious: 'Previous Month',
      totalCount: 115852),
  StatusChangeBanner(
      title: 'Expenses',
      rateChange: 2.8,
      valueChanged: RateChanged.decreased(),
      isPriceCount: true,
      currentCount: 8500,
      totalOrPrevious: 'Previous Month',
      totalCount: 7500),
  StatusChangeBanner(
      title: 'Profit',
      rateChange: 75,
      valueChanged: RateChanged.decreased(),
      isPriceCount: true,
      currentCount: 112000,
      totalOrPrevious: 'Previous Month',
      totalCount: 142000),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController controller = ScrollController(),
      horizontalController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final showMenuStatus = context.watch<ShowMenuCubit>().state;

    return GestureDetector(
      onTap: () => context.read<ShowMenuCubit>().toggleState(),
      child: Scaffold(
        appBar: AppWidgets().appBar(context),
        body: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Text(
                  'Welcome User',
                  style: txtStyle(size: 20),
                ),
                ...bannerList
                    .map((e) => DetailBannerWidget(
                          e: e,
                        ))
                    .toList(),
                ...statusChangeBannerList
                    .map(
                      (e) => StatusChangeBannerWidget(e: e),
                    )
                    .toList(),
                Card(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('Recent Projects'),
                      SingleChildScrollView(
                        controller: horizontalController,
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          Container(
                              width: Sizes().ratioWithScrWidth(context, 0.56),
                              height: Sizes().ratioWithScrHeight(context, 0.04),
                              color: Colors.red,
                              alignment: Alignment.centerLeft,
                              child: Text('Project Name')),
                          Container(
                              width: Sizes().ratioWithScrWidth(context, 0.25),
                              height: Sizes().ratioWithScrHeight(context, 0.04),
                              color: Colors.blue,
                              alignment: Alignment.center,
                              child: Text('Progress')),
                          Container(
                              width: Sizes().ratioWithScrWidth(context, 0.20),
                              height: Sizes().ratioWithScrHeight(context, 0.04),
                              color: Colors.green,
                              alignment: Alignment.center,
                              child: Text('Action'))
                        ]),
                      )
                    ]))
              ],
            ),
            PopupMenu(showMenuStatus: showMenuStatus),
          ],
        ),
        drawer: Scrollbar(
          controller: controller,
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
  }

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
