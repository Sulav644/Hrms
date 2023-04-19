import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/admin_dashboard/components/project_detail_widget.dart';
import 'package:hrms_clone/hrms_clone/view_more_projects/view_more_projects.dart';

import '../../../core/utils.dart';
import '../core/components.dart';
import '../data/detail_banner.dart';

List<ProjectDetail> projectList = [
  ProjectDetail(
      title: 'Office Management',
      openTask: 1,
      completedTask: 9,
      levelBar: 0.12),
  ProjectDetail(
      title: 'Project Management',
      openTask: 2,
      completedTask: 5,
      levelBar: 0.05),
  ProjectDetail(
      title: 'Video Calling App', openTask: 3, completedTask: 3, levelBar: 0.1),
  ProjectDetail(
      title: 'Hospital Administration',
      openTask: 12,
      completedTask: 4,
      levelBar: 0.14),
  ProjectDetail(
      title: 'Digital Marketplace',
      openTask: 7,
      completedTask: 14,
      levelBar: 0.16),
];

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Sizes().ratioWithScrHeight(context, 0.03)),
            child: Padding(
              padding: EdgeInsets.only(
                  left: Sizes().ratioWithScrWidth(context, 0.04)),
              child: Text(
                'Recent Projects',
                style: txtStyle(size: 20, weight: FontWeight.w500),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Components().separator(context),
                Padding(
                  padding: EdgeInsets.only(
                      left: Sizes().ratioWithScrWidth(context, 0.04)),
                  child: Row(children: [
                    headerItem(
                        context: context,
                        width: 0.5,
                        alignment: Alignment.centerLeft,
                        title: 'Project Name'),
                    headerItem(
                        context: context,
                        width: 0.25,
                        alignment: Alignment.center,
                        title: 'Progress'),
                    headerItem(
                        context: context,
                        width: 0.15,
                        alignment: Alignment.center,
                        title: 'Action'),
                  ]),
                ),
                Components().separator(context),
                ...projectList
                    .map(
                      (e) => ProjectDetailWidget(
                        e: e,
                      ),
                    )
                    .toList()
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Sizes().ratioWithScrHeight(context, 0.02)),
                child: GestureDetector(
                    onTap: () =>
                        Navigation().navigateTo(context, ViewMoreProjects()),
                    child: Text('View all projects')),
              ),
            ],
          )
        ]));
  }

  Widget headerItem(
          {required BuildContext context,
          required double width,
          required Alignment alignment,
          required String title}) =>
      Container(
          width: Sizes().ratioWithScrWidth(context, width),
          height: Sizes().ratioWithScrHeight(context, 0.06),
          alignment: alignment,
          child: Text(
            title,
            style: txtStyle(size: 15, weight: FontWeight.w500),
          ));
}
