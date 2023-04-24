import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/core/app_widgets.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/components/administration_detail_card.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/components/heading_title_menu_edit.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/components/project_detail_with_cost.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/components/team_members.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/components/uploaded_files.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/domain/select_indicator_cubit.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/domain/select_timeline_cubit.dart';
import '../../core/components/popup_menu/domain/show_menu_cubit.dart';
import '../../core/utils.dart';
import '../../home_page.dart';
import 'core/components.dart';
import 'data/member_list.dart';
import 'domain/show_priority_cubit.dart';

class ProjectDetailPage extends StatefulWidget {
  const ProjectDetailPage({
    super.key,
  });

  @override
  State<ProjectDetailPage> createState() => _ProjectDetailPageState();
}

class _ProjectDetailPageState extends State<ProjectDetailPage> {
  ScrollController scrollController = ScrollController();

  TextEditingController editingController = TextEditingController();
  int timelineIndex = 100;
  FocusNode textEditNode = FocusNode();

  final GlobalKey<ProjectDetailWithCostState> keyState =
      GlobalKey<ProjectDetailWithCostState>();

  @override
  Widget build(BuildContext context) {
    final showMenuStatus = context.watch<ShowMenuCubit>().state;
    final indicatorStatus = context.watch<SelectIndicatorCubit>().state;
    final timelinesState = context.watch<EditTimelineCubit>().state;
    final textBoxIndex = context.watch<TextBoxInplaceOfTextCubit>().state;
    final checkedTimelines = context.watch<SelectedTimelinesCubit>().state;
    const indAll = IndicatorSelect.all();
    const indPending = IndicatorSelect.pending();
    const indCompleted = IndicatorSelect.completed();

    return Stack(
      children: [
        AppWidgets().appScaffold(
            context: context,
            showMenuStatus: showMenuStatus,
            controller: scrollController,
            onClick: () {
              context.read<ShowMenuCubit>().hideMenu();
              context.read<ShowPriorityCubit>().hideState();
              if (editingController.text.isNotEmpty) {
                context.read<EditTimelineCubit>().editTimeline(
                    timeline: editingController.text, index: timelineIndex);
              }

              context.read<TextBoxInplaceOfTextCubit>().toggleState(100);
              context.read<SelectedTimelinesCubit>().removeAll();
            },
            children: [
              Column(children: [
                Spacing().verticalSpace(context, 0.025),
                const HeadingTitleMenuEdit(),
                Spacing().verticalSpace(context, 0.05),
                const AdministrationDetailCard(),
                const UploadedFilesWidget(),
                Spacing().verticalSpace(context, 0.03),
                Components().detailCard(
                    context: context,
                    padWid: 0,
                    padHeight: 0.01,
                    alignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            tabWithRedIndicator(
                                context: context,
                                onClick: () => context
                                    .read<SelectIndicatorCubit>()
                                    .toggleState(indAll),
                                width: 0.23,
                                height: 0.1,
                                boxColor: indicatorStatus == indAll
                                    ? const Color.fromARGB(255, 219, 216, 216)
                                    : Colors.white,
                                indicatorColor: indicatorStatus == indAll
                                    ? const Color.fromARGB(255, 243, 34, 19)
                                    : Colors.white,
                                indicOneHeight: 0.05,
                                indicTwoHeight: 0.08,
                                indicTwoPos: 0.02,
                                title: 'All Tasks',
                                color: indicatorStatus == indAll
                                    ? Colors.black
                                    : const Color.fromARGB(255, 124, 122, 122)),
                            tabWithRedIndicator(
                                context: context,
                                onClick: () => context
                                    .read<SelectIndicatorCubit>()
                                    .toggleState(indPending),
                                width: 0.23,
                                height: 0.14,
                                boxColor: indicatorStatus == indPending
                                    ? const Color.fromARGB(255, 219, 216, 216)
                                    : Colors.white,
                                indicatorColor: indicatorStatus == indPending
                                    ? Colors.red
                                    : Colors.white,
                                indicOneHeight: 0.05,
                                indicTwoHeight: 0.09,
                                indicTwoPos: 0.05,
                                title: 'Pending Tasks',
                                color: indicatorStatus == indPending
                                    ? Colors.black
                                    : const Color.fromARGB(255, 124, 122, 122)),
                            tabWithRedIndicator(
                                context: context,
                                onClick: () => context
                                    .read<SelectIndicatorCubit>()
                                    .toggleState(indCompleted),
                                width: 0.23,
                                height: 0.14,
                                boxColor: indicatorStatus == indCompleted
                                    ? const Color.fromARGB(255, 219, 216, 216)
                                    : Colors.white,
                                indicatorColor: indicatorStatus == indCompleted
                                    ? Colors.red
                                    : Colors.white,
                                indicOneHeight: 0.05,
                                indicTwoHeight: 0.09,
                                indicTwoPos: 0.05,
                                title: 'Completed Tasks',
                                color: indicatorStatus == indCompleted
                                    ? Colors.black
                                    : const Color.fromARGB(255, 124, 122, 122)),
                          ])
                    ]),
                Spacing().verticalSpace(context, 0.02),
                if (indicatorStatus == indAll)
                  Components().detailCard(
                      context: context,
                      padWid: 0,
                      padHeight: 0,
                      alignment: CrossAxisAlignment.start,
                      children: [
                        ...timelinesState
                            .map(
                              (e) => Column(
                                children: [
                                  Container(
                                    color: checkedTimelines
                                            .contains(timelinesState.indexOf(e))
                                        ? const Color.fromARGB(
                                            255, 233, 228, 228)
                                        : Colors.white,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: Sizes()
                                              .ratioWithScrWidth(context, 0.03),
                                          vertical: Sizes().ratioWithScrHeight(
                                              context, 0.01)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: checkedTimelines
                                                                .contains(
                                                                    timelinesState
                                                                        .indexOf(
                                                                            e))
                                                            ? Colors.green
                                                            : Colors.white,
                                                        border: Border.all(
                                                            color: const Color
                                                                    .fromARGB(
                                                                255,
                                                                138,
                                                                135,
                                                                135)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        if (checkedTimelines
                                                            .contains(
                                                                timelinesState
                                                                    .indexOf(
                                                                        e))) {
                                                          context
                                                              .read<
                                                                  SelectedTimelinesCubit>()
                                                              .deselectTimeline(
                                                                  timelinesState
                                                                      .indexOf(
                                                                          e));
                                                        } else {
                                                          context
                                                              .read<
                                                                  SelectedTimelinesCubit>()
                                                              .addTimeLines(
                                                                  timelinesState
                                                                      .indexOf(
                                                                          e));
                                                        }
                                                      },
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(2.0),
                                                        child: Icon(
                                                          Icons.check,
                                                          color: checkedTimelines
                                                                  .contains(
                                                                      timelinesState
                                                                          .indexOf(
                                                                              e))
                                                              ? Colors.white
                                                              : const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  138,
                                                                  135,
                                                                  135),
                                                          size: 18,
                                                        ),
                                                      ),
                                                    )),
                                                Spacing().horizontalSpace(
                                                    context, 0.03),
                                                GestureDetector(
                                                    onTap: () {
                                                      textEditNode
                                                          .requestFocus();
                                                      setState(() {
                                                        editingController.text =
                                                            e.toString();
                                                        timelineIndex =
                                                            timelinesState
                                                                .indexOf(e);
                                                      });

                                                      context
                                                          .read<
                                                              TextBoxInplaceOfTextCubit>()
                                                          .toggleState(
                                                              timelinesState
                                                                  .indexOf(e));
                                                    },
                                                    child: textBoxIndex != 100 &&
                                                            textBoxIndex ==
                                                                timelinesState
                                                                    .indexOf(e)
                                                        ? SizedBox(
                                                            width: Sizes()
                                                                .ratioWithScrWidth(
                                                                    context, 0.55),
                                                            height: Sizes()
                                                                .ratioWithScrHeight(
                                                                    context, 0.04),
                                                            child: TextField(
                                                              focusNode:
                                                                  textEditNode,
                                                              maxLines: 2,
                                                              controller:
                                                                  editingController,
                                                              style: txtStyle(
                                                                  size: 14),
                                                              decoration:
                                                                  InputDecoration(
                                                                      contentPadding: EdgeInsets.only(
                                                                          top: Sizes().ratioWithScrHeight(
                                                                              context, 0.012),
                                                                          left: Sizes().ratioWithScrHeight(
                                                                              context,
                                                                              0.012),
                                                                          bottom: Sizes().ratioWithScrHeight(
                                                                              context,
                                                                              0.012)),
                                                                      border: const OutlineInputBorder(
                                                                          borderSide: BorderSide(
                                                                              color: Colors
                                                                                  .orange)),
                                                                      focusedBorder:
                                                                          const OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(color: Colors.orange),
                                                                      )),
                                                            ))
                                                        : Container(
                                                            width: Sizes()
                                                                .ratioWithScrWidth(
                                                                    context, 0.6),
                                                            height: Sizes()
                                                                .ratioWithScrHeight(
                                                                    context,
                                                                    0.06),
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Text(
                                                              e,
                                                              style: txtStyle(
                                                                  color: checkedTimelines.contains(
                                                                          timelinesState.indexOf(
                                                                              e))
                                                                      ? const Color
                                                                              .fromARGB(
                                                                          255,
                                                                          138,
                                                                          135,
                                                                          135)
                                                                      : Colors
                                                                          .black,
                                                                  height: 1.6),
                                                            ))),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: const Color
                                                                    .fromARGB(
                                                                255,
                                                                138,
                                                                135,
                                                                135)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(3.0),
                                                      child: Icon(
                                                        Icons.person_add,
                                                        color: Color.fromARGB(
                                                            255, 138, 135, 135),
                                                        size: 17,
                                                      ),
                                                    )),
                                                Spacing().horizontalSpace(
                                                    context, 0.02),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: const Color
                                                                    .fromARGB(
                                                                255,
                                                                138,
                                                                135,
                                                                135)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          timelineIndex =
                                                              timelinesState
                                                                  .indexOf(e);
                                                        });
                                                        context
                                                            .read<
                                                                EditTimelineCubit>()
                                                            .removeTimeline(
                                                                index:
                                                                    timelineIndex);
                                                      },
                                                      child: const Padding(
                                                        padding:
                                                            EdgeInsets.all(3.0),
                                                        child: Icon(
                                                          Icons.delete,
                                                          color: Color.fromARGB(
                                                              255,
                                                              138,
                                                              135,
                                                              135),
                                                          size: 17,
                                                        ),
                                                      ),
                                                    )),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ),
                                  if (timelinesState.indexOf(e) !=
                                      timelinesState
                                          .indexOf(timelinesState.last))
                                    Container(
                                      width: Sizes().scrWidth(context),
                                      height: Sizes()
                                          .ratioWithScrHeight(context, 0.004),
                                      color: const Color.fromARGB(
                                          255, 218, 216, 216),
                                    )
                                ],
                              ),
                            )
                            .toList()
                      ]),
                if (indicatorStatus != indAll)
                  Spacing().verticalSpace(context, 0.1),
                ProjectDetailWithCost(
                  key: keyState,
                ),
                Spacing().verticalSpace(context, 0.03),
                TeamMembers(heading: 'Leader', membersList: leadersList),
                Spacing().verticalSpace(context, 0.03),
                TeamMembers(heading: 'Users', membersList: usersList),
                Spacing().verticalSpace(context, 0.03),
              ])
            ]),
      ],
    );
  }

  Widget priorityOption(
          {required BuildContext context,
          required Color color,
          required String type}) =>
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Sizes().ratioWithScrWidth(context, 0.03),
            vertical: Sizes().ratioWithScrHeight(context, 0.01)),
        child: Row(children: [
          Container(
              width: Sizes().ratioWithScrWidth(context, 0.045),
              height: Sizes().ratioWithScrWidth(context, 0.045),
              decoration: BoxDecoration(
                  border: Border.all(color: color, width: 3),
                  borderRadius: BorderRadius.circular(100)),
              child: Container(
                width: Sizes().ratioWithScrWidth(context, 0.01),
                height: Sizes().ratioWithScrWidth(context, 0.01),
                decoration: BoxDecoration(
                    color: color,
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(100)),
              )),
          Spacing().horizontalSpace(context, 0.02),
          Material(
            child: Text(
              type,
              style: txtStyle(size: 12, weight: FontWeight.w300),
            ),
          ),
        ]),
      );

  Widget tabWithRedIndicator(
          {required BuildContext context,
          required VoidCallback onClick,
          required double width,
          required double height,
          required Color boxColor,
          required Color indicatorColor,
          required double indicOneHeight,
          required double indicTwoHeight,
          required double indicTwoPos,
          required String title,
          required Color color}) =>
      GestureDetector(
        onTap: () => onClick(),
        child: Stack(
          children: [
            AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                width: Sizes().ratioWithScrWidth(context, width),
                height: Sizes().ratioWithScrWidth(context, height),
                color: boxColor,
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: txtStyle(
                      color: color, weight: FontWeight.w600, height: 1.4),
                  textAlign: TextAlign.center,
                )),
            Transform(
              transform: Matrix4.skewY(40 / 180 * pi),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                width: 3,
                height: Sizes().ratioWithScrWidth(context, indicOneHeight),
                color: indicatorColor,
              ),
            ),
            Positioned(
              top: Sizes().ratioWithScrWidth(context, indicTwoPos),
              child: Transform(
                transform: Matrix4.skewY(-40 / 180 * pi),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 600),
                  width: 3,
                  height: Sizes().ratioWithScrWidth(context, indicTwoHeight),
                  color: indicatorColor,
                ),
              ),
            )
          ],
        ),
      );
}
