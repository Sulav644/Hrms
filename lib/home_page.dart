import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/hrms_clone/admin_dashboard/data/detail_banner.dart';
import 'package:hrms_clone/hrms_clone/admin_dashboard/admin_dashboard.dart';
import 'package:hrms_clone/core/components/popup_menu/domain/show_menu_cubit.dart';
import 'core/app_widgets.dart';
import 'hrms_clone/project_detail_&_member/data/member_list.dart';

List<DetailBanner> bannerList = [
  const DetailBanner(icon: Icons.task, count: 112, title: 'Projects'),
  const DetailBanner(icon: Icons.group, count: 2, title: 'Clients'),
  const DetailBanner(icon: Icons.diamond, count: 37, title: 'Tasks'),
  const DetailBanner(icon: Icons.person, count: 218, title: 'Employees'),
];
List<StatusChangeBanner> statusChangeBannerList = [
  const StatusChangeBanner(
      title: 'New Employees',
      rateChange: 10,
      valueChanged: RateChanged.increased(),
      isPriceCount: false,
      currentCount: 10,
      totalOrPrevious: 'Overall Employees',
      totalCount: 218),
  const StatusChangeBanner(
      title: 'Earnings',
      rateChange: 12.5,
      valueChanged: RateChanged.increased(),
      isPriceCount: true,
      currentCount: 142300,
      totalOrPrevious: 'Previous Month',
      totalCount: 115852),
  const StatusChangeBanner(
      title: 'Expenses',
      rateChange: 2.8,
      valueChanged: RateChanged.decreased(),
      isPriceCount: true,
      currentCount: 8500,
      totalOrPrevious: 'Previous Month',
      totalCount: 7500),
  const StatusChangeBanner(
      title: 'Profit',
      rateChange: 75,
      valueChanged: RateChanged.decreased(),
      isPriceCount: true,
      currentCount: 112000,
      totalOrPrevious: 'Previous Month',
      totalCount: 142000),
];
List<MemberList> leadersList = [
  const MemberList(
      image: 'assets/images/member_list/download.jpg',
      name: 'Steve Jobs',
      designation: 'Team Leader'),
  const MemberList(
      image: 'assets/images/member_list/downloadTwo.jpg',
      name: 'Mark Zuckerberg',
      designation: 'Team Leader'),
];
List<MemberList> usersList = [
  const MemberList(
      image: 'assets/images/member_list/downloadThree.jpg',
      name: 'Warren Buffet',
      designation: 'Web Designer'),
  const MemberList(
      image: 'assets/images/member_list/downloadFour.jpg',
      name: 'Elon Musk',
      designation: 'Web Developer'),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final showMenuStatus = context.watch<ShowMenuCubit>().state;

    return AppWidgets().appScaffold(
        context: context,
        showMenuStatus: showMenuStatus,
        controller: controller,
        onClick: () => context.read<ShowMenuCubit>().hideMenu(),
        children: [
          AdminDashboard(
            showMenuStatus: showMenuStatus,
          )
        ]);
  }
}
