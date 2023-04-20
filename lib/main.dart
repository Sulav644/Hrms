import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/home_page.dart';
import 'package:hrms_clone/core/components/popup_menu/domain/show_menu_cubit.dart';
import 'package:hrms_clone/hrms_clone/holidays/domain/add_holiday_cubit.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/domain/select_indicator_cubit.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/domain/select_timeline_cubit.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/domain/show_priority_cubit.dart';
import 'package:hrms_clone/hrms_clone/view_more_projects/domain/member_sortlist_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ShowMenuCubit()),
          BlocProvider(create: (context) => ShowPriorityCubit()),
          BlocProvider(create: (context) => SetPositionCubit()),
          BlocProvider(create: (context) => SelectIndicatorCubit()),
          BlocProvider(create: (context) => SelectTimelineCubit()),
          BlocProvider(create: (context) => EditTimelineCubit()),
          BlocProvider(create: (context) => TextBoxInplaceOfTextCubit()),
          BlocProvider(create: (context) => SelectedTimelinesCubit()),
          BlocProvider(create: (context) => MembersSortListCubit()),
          BlocProvider(create: (context) => AddHolidayCubit()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomePage(),
        ));
  }
}
