import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/admin_dashboard/data/detail_banner.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/project_detail_page.dart';

import '../../../core/utils.dart';
import '../core/components.dart';

class ProjectDetailWidget extends StatelessWidget {
  final ProjectDetail e;
  const ProjectDetailWidget({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigation().navigateTo(context, ProjectDetailPage()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: Sizes().ratioWithScrWidth(context, 0.04)),
            child: Row(children: [
              titleOpenTaskAndCompletedTask(context: context, children: [
                Text(
                  '${e.openTask} ',
                  style: txtStyle(
                      size: 11, weight: FontWeight.w500, color: Colors.black),
                ),
                Text(
                  'open tasks, ',
                  style: txtStyle(
                      size: 11, color: Color.fromARGB(255, 122, 121, 121)),
                ),
                Text(
                  '${e.completedTask} ',
                  style: txtStyle(
                      size: 11, color: Colors.black, weight: FontWeight.w500),
                ),
                Text(
                  'tasks completed',
                  style: txtStyle(
                      size: 11, color: Color.fromARGB(255, 122, 121, 121)),
                ),
              ]),
              statusBar(context: context, children: [
                labelBar(
                    context: context,
                    width: 0.17,
                    borderRad: [10, 10, 10, 10],
                    color: Color.fromARGB(255, 223, 220, 220)),
                labelBar(
                    context: context,
                    width: e.levelBar!,
                    borderRad: [10, 10, 0, 0],
                    color: Color.fromARGB(255, 2, 37, 66)),
              ]),
              popupMenuButton(context: context, children: [
                popupMenuItem(
                    context: context, icon: Icons.edit_outlined, title: 'Edit'),
                popupMenuItem(
                    context: context,
                    icon: Icons.delete_outline,
                    title: 'Delete'),
              ]),
            ]),
          ),
          Components().separator(context),
        ],
      ),
    );
  }

  Widget labelBar(
          {required BuildContext context,
          required double width,
          required Color color,
          required List<double> borderRad}) =>
      Container(
        width: Sizes().ratioWithScrWidth(context, width),
        height: Sizes().ratioWithScrHeight(context, 0.006),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderRad[0]),
                bottomLeft: Radius.circular(borderRad[1]),
                topRight: Radius.circular(borderRad[2]),
                bottomRight: Radius.circular(borderRad[3]))),
      );

  PopupMenuItem popupMenuItem(
          {required BuildContext context,
          required IconData icon,
          required String title}) =>
      PopupMenuItem(
        child: Row(
          children: [
            Icon(icon),
            Spacing().horizontalSpace(context, 0.02),
            Text(title),
            Spacing().horizontalSpace(context, 0.01),
          ],
        ),
      );
  Widget titleOpenTaskAndCompletedTask(
          {required BuildContext context, required List<Widget> children}) =>
      Container(
        width: Sizes().ratioWithScrWidth(context, 0.5),
        height: Sizes().ratioWithScrHeight(context, 0.08),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                e.title!,
                style: txtStyle(weight: FontWeight.w400),
              ),
              Spacing().verticalSpace(context, 0.01),
              Row(children: children)
            ]),
      );
  Widget statusBar(
          {required BuildContext context, required List<Widget> children}) =>
      Container(
        width: Sizes().ratioWithScrWidth(context, 0.25),
        alignment: Alignment.center,
        child: Stack(
          children: children,
        ),
      );
  Widget popupMenuButton(
          {required BuildContext context,
          required List<PopupMenuItem> children}) =>
      Container(
          width: Sizes().ratioWithScrWidth(context, 0.18),
          alignment: Alignment.centerRight,
          child: PopupMenuButton(
            padding: EdgeInsets.zero,
            offset: Offset(-Sizes().ratioWithScrWidth(context, 0.08),
                Sizes().ratioWithScrHeight(context, 0.06)),
            itemBuilder: (context) {
              return children;
            },
          ));
}
