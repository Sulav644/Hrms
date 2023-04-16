import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/components/administration_detail_card.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/components/heading_title_menu_edit.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/components/team_members.dart';

import '../../core/utils.dart';
import '../../home_page.dart';

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Spacing().verticalSpace(context, 0.025),
      HeadingTitleMenuEdit(),
      Spacing().verticalSpace(context, 0.05),
      AdministrationDetailCard(),
      Spacing().verticalSpace(context, 0.03),
      TeamMembers(heading: 'Leader', membersList: leadersList),
      Spacing().verticalSpace(context, 0.03),
      TeamMembers(heading: 'Users', membersList: usersList),
      Spacing().verticalSpace(context, 0.03),
    ]);
  }
}
