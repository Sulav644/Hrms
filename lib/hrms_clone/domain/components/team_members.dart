import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/data/member_list.dart';

import '../../../core/utils.dart';

class TeamMembers extends StatelessWidget {
  final List<MemberList> membersList;
  final String heading;
  const TeamMembers(
      {super.key, required this.membersList, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Sizes().ratioWithScrWidth(context, 0.06),
              vertical: Sizes().ratioWithScrHeight(context, 0.03)),
          child: Column(children: [
            assignedHeading(context: context, heading: heading),
            Spacing().verticalSpace(context, 0.01),
            ...membersList
                .map(
                  (e) => Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: Sizes().ratioWithScrHeight(context, 0.01)),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage(
                          e.image!,
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.name!,
                            style: txtStyle(size: 16, weight: FontWeight.bold),
                          ),
                          Spacing().verticalSpace(context, 0.012),
                          Text(
                            e.designation!,
                            style: txtStyle(size: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList()
          ]),
        ));
  }

  Widget assignedHeading(
          {required BuildContext context, required String heading}) =>
      Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              title(),
              addButton(context: context),
            ]),
      );
  Widget title() => Text(
        'Assigned $heading',
        style: txtStyle(size: 20, weight: FontWeight.bold),
      );
  Widget addButton({required BuildContext context}) => Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 153, 69),
            borderRadius: BorderRadius.circular(6)),
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
              'Add',
              style: txtStyle(color: Colors.white, size: 16),
            ),
          ]),
        ),
      );
}
