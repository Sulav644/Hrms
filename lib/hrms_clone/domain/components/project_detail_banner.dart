import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/data/detail_banner.dart';

import '../../../core/utils.dart';

class ProjectDetailWidget extends StatelessWidget {
  final ProjectDetail e;
  const ProjectDetailWidget({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: Sizes().ratioWithScrWidth(context, 0.58),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(e.title!),
          Row(children: [
            Text('${e.openTask} '),
            Text('open tasks,'),
            Text('${e.completedTask} '),
            Text('tasks completed'),
          ])
        ]),
      ),
      Container(
        width: Sizes().ratioWithScrWidth(context, 0.25),
        alignment: Alignment.center,
        child: Stack(
          children: [
            labelBar(
                context: context,
                width: 0.2,
                color: Color.fromARGB(255, 185, 183, 183)),
            labelBar(context: context, width: e.levelBar!, color: Colors.red),
          ],
        ),
      ),
      Container(
          width: Sizes().ratioWithScrWidth(context, 0.20),
          alignment: Alignment.centerRight,
          child: PopupMenuButton(
            offset: Offset(1, Sizes().ratioWithScrHeight(context, 0.05)),
            itemBuilder: (context) {
              return [
                popupMenuItem(
                    context: context, icon: Icons.edit, title: 'Edit'),
                popupMenuItem(
                    context: context, icon: Icons.delete, title: 'Delete'),
              ];
            },
          ))
    ]);
  }

  Widget labelBar(
          {required BuildContext context,
          required double width,
          required Color color}) =>
      Container(
        width: Sizes().ratioWithScrWidth(context, width),
        height: 6,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
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
            Spacing().horizontalSpace(context, 0.04),
          ],
        ),
      );
}
