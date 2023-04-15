import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/domain/components/project_detail_banner.dart';

import '../../../core/utils.dart';
import '../../data/detail_banner.dart';

List<ProjectDetail> projectList = [
  ProjectDetail(
      title: 'Office Management',
      openTask: 1,
      completedTask: 9,
      levelBar: 0.14),
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
      levelBar: 0.16),
  ProjectDetail(
      title: 'Digital Marketplace',
      openTask: 7,
      completedTask: 14,
      levelBar: 0.18),
];

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: Sizes().ratioWithScrHeight(context, 0.03)),
        child: Text(
          'Recent Projects',
          style: txtStyle(size: 20, weight: FontWeight.bold),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            separator(context),
            Row(children: [
              headerItem(
                  context: context,
                  width: 0.58,
                  alignment: Alignment.centerLeft,
                  title: 'Project Name'),
              headerItem(
                  context: context,
                  width: 0.25,
                  alignment: Alignment.center,
                  title: 'Progress'),
              headerItem(
                  context: context,
                  width: 0.20,
                  alignment: Alignment.center,
                  title: 'Action'),
            ]),
            separator(context),
            ...projectList
                .map(
                  (e) => ProjectDetailWidget(e: e),
                )
                .toList()
          ],
        ),
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
            style: txtStyle(size: 17, weight: FontWeight.bold),
          ));
  Widget separator(BuildContext context) => Container(
        width: Sizes().scrWidth(context),
        height: 4,
        color: Color.fromARGB(255, 218, 216, 216),
      );
}