import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/hrms_clone/admin_dashboard/components/project_list.dart';
import 'package:hrms_clone/hrms_clone/view_more_projects/components/member_detail_horiz_list.dart';
import 'package:hrms_clone/hrms_clone/view_more_projects/components/member_detail_vert_list.dart';
import 'package:hrms_clone/hrms_clone/view_more_projects/domain/member_sortlist_cubit.dart';

import '../../core/app_widgets.dart';
import '../../core/components/popup_menu/domain/show_menu_cubit.dart';
import '../../core/utils.dart';
import '../project_detail_&_member/core/components.dart';

class ViewMoreProjects extends StatefulWidget {
  ViewMoreProjects({super.key});

  @override
  State<ViewMoreProjects> createState() => _ViewMoreProjectsState();
}

class _ViewMoreProjectsState extends State<ViewMoreProjects> {
  ScrollController scrollController = ScrollController();

  TextEditingController editingController = TextEditingController();

  int timelineIndex = 100;

  FocusNode fieldOneNode = FocusNode();

  FocusNode fieldTwoNode = FocusNode();

  FocusNode fieldThreeNode = FocusNode();
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => context.read<MembersSortListCubit>().sortToAlphabet());
  }

  @override
  Widget build(BuildContext context) {
    final showMenuStatus = context.watch<ShowMenuCubit>().state;

    return AppWidgets().appScaffold(
        context: context,
        showMenuStatus: showMenuStatus,
        controller: scrollController,
        onClick: () {
          fieldOneNode.unfocus();
          fieldTwoNode.unfocus();
          fieldThreeNode.unfocus();
        },
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Spacing().verticalSpace(context, 0.02),
            Row(children: [
              Text(
                'Projects',
                style: txtStyle(size: 17, weight: FontWeight.w500),
              )
            ]),
            Spacing().verticalSpace(context, 0.01),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 180, 177, 177)),
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: EdgeInsets.all(
                        Sizes().ratioWithScrWidth(context, 0.02)),
                    child: Column(
                        children: [threeBoxes(), threeBoxes(), threeBoxes()]),
                  )),
              Spacing().horizontalSpace(context, 0.025),
              Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 180, 177, 177)),
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: EdgeInsets.all(
                        Sizes().ratioWithScrWidth(context, 0.02)),
                    child: Column(children: [
                      horizontalLine(context),
                      horizontalLine(context),
                      horizontalLine(context)
                    ]),
                  )),
              Spacing().horizontalSpace(context, 0.025),
              addButton(
                  context: context, title: 'Create Project', borderRad: 10),
            ]),
            Spacing().verticalSpace(context, 0.04),
            textField(fieldOneNode, 'Project Name'),
            Spacing().verticalSpace(context, 0.02),
            textField(fieldTwoNode, 'Employee Name'),
            Spacing().verticalSpace(context, 0.02),
            Container(
                width: Sizes().scrWidth(context),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 236, 236),
                    border: Border.all(
                        color: Color.fromARGB(255, 155, 154, 154), width: 1),
                    borderRadius: BorderRadius.circular(6)),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Sizes().ratioWithScrWidth(context, 0.03)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacing().verticalSpace(context, 0.01),
                              Text(
                                'Designation',
                                style: txtStyle(
                                    size: 13,
                                    color: Color.fromARGB(255, 122, 121, 121)),
                              ),
                              Spacing().verticalSpace(context, 0.013),
                              Text(
                                'Select Roll',
                                style: txtStyle(
                                    color: Color.fromARGB(255, 44, 44, 44)),
                              ),
                              Spacing().verticalSpace(context, 0.022),
                            ],
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromARGB(255, 141, 139, 139),
                            size: 28,
                          )
                        ]),
                  ),
                ])),
            Spacing().verticalSpace(context, 0.02),
            SizedBox(
              height: Sizes().ratioWithScrHeight(context, 0.07),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {},
                  child: Text(
                    'SEARCH',
                    style: txtStyle(size: 18, color: Colors.white),
                  )),
            ),
            Spacing().verticalSpace(context, 0.02),
            MemberDetailHorizList(),
          ])
        ]);
  }

  Widget threeBoxes() => Row(children: [
        ...List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    width: 7,
                    height: 5,
                    color: Colors.black,
                  ),
                ))
      ]);

  Widget horizontalLine(BuildContext context) => Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: Sizes().ratioWithScrWidth(context, 0.06),
          height: Sizes().ratioWithScrHeight(context, 0.004),
          color: Color.fromARGB(255, 85, 83, 83),
        ),
      );

  Widget addButton(
          {required BuildContext context,
          required String title,
          required double borderRad}) =>
      Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 153, 69),
            borderRadius: BorderRadius.circular(borderRad)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Icon(
              Icons.add,
              size: 16,
              color: Colors.white,
            ),
            Spacing().horizontalSpace(context, 0.005),
            Text(
              title,
              style: txtStyle(color: Colors.white, size: 16),
            ),
          ]),
        ),
      );

  Widget textField(FocusNode node, String title) => TextField(
        focusNode: node,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 155, 154, 154), width: 0.4)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 155, 154, 154), width: 0.4)),
            labelText: title,
            labelStyle: txtStyle(color: Color.fromARGB(255, 151, 147, 147)),
            fillColor: Color.fromARGB(255, 240, 236, 236),
            filled: true),
      );
}
