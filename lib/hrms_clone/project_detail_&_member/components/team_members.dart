import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/components/image_name_designation.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/data/member_list.dart';

import '../../../core/utils.dart';
import '../core/components.dart';

class TeamMembers extends StatelessWidget {
  final List<MemberList> membersList;
  final String heading;
  const TeamMembers(
      {super.key, required this.membersList, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Components().detailCard(
        context: context,
        padWid: 0.06,
        padHeight: 0.03,
        alignment: CrossAxisAlignment.center,
        children: [
          assignedHeading(context: context, heading: heading),
          Spacing().verticalSpace(context, 0.01),
          ...membersList
              .map(
                (e) => ImageNameDesignation(e: e),
              )
              .toList()
        ]);
  }

  Widget assignedHeading(
          {required BuildContext context, required String heading}) =>
      Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              title(),
              Components()
                  .addButton(context: context, title: 'Add', borderRad: 6),
            ]),
      );
  Widget title() => Text(
        'Assigned $heading',
        style: txtStyle(size: 20, weight: FontWeight.bold),
      );
}
