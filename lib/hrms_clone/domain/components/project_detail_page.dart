import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:hrms_clone/hrms_clone/domain/components/team_members.dart';

import '../../../core/utils.dart';
import '../../../home_page.dart';

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Spacing().verticalSpace(context, 0.025),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          'Hospital Admin',
          style: txtStyle(size: 18, weight: FontWeight.bold),
        ),
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Color.fromARGB(255, 151, 150, 150), width: 1.5),
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding:
                      EdgeInsets.all(Sizes().ratioWithScrWidth(context, 0.02)),
                  child: Icon(
                    Icons.menu,
                    size: 25,
                  ),
                )),
            Spacing().horizontalSpace(context, 0.03),
            Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      EdgeInsets.all(Sizes().ratioWithScrWidth(context, 0.03)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          size: 18,
                          color: Colors.white,
                        ),
                        Spacing().horizontalSpace(context, 0.01),
                        Text(
                          'Edit Project',
                          style: txtStyle(color: Colors.white, size: 14),
                        )
                      ]),
                ))
          ],
        ),
      ]),
      Spacing().verticalSpace(context, 0.05),
      Card(
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Sizes().ratioWithScrWidth(context, 0.07),
                vertical: Sizes().ratioWithScrHeight(context, 0.04)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Hospital Administration',
                style: txtStyle(size: 18, weight: FontWeight.bold),
              ),
              Spacing().verticalSpace(context, 0.008),
              fieldNameAndTaskCounts(),
              Spacing().verticalSpace(context, 0.03),
              Text(
                lorem(words: 120, paragraphs: 2),
                style: txtStyle(size: 13, height: 1.8),
              ),
            ]),
          )),
      Spacing().verticalSpace(context, 0.03),
      TeamMembers(heading: 'Leader', membersList: leadersList),
      Spacing().verticalSpace(context, 0.03),
      TeamMembers(heading: 'Users', membersList: usersList),
      Spacing().verticalSpace(context, 0.03),
    ]);
  }

  Widget fieldNameAndTaskCounts() => Row(children: [
        count(2),
        task(' open tasks, '),
        count(5),
        task(' tasks completed')
      ]);
  Widget count(int num) => Text(
        '$num',
        style: txtStyle(size: 13),
      );
  Widget task(String task) => Text(
        '$task',
        style: txtStyle(size: 13, color: Color.fromARGB(255, 167, 164, 164)),
      );
}
