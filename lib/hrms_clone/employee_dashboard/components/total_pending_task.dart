import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/core/utils.dart';

import '../core/components.dart';

class TotalPendingTasks extends StatelessWidget {
  const TotalPendingTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Components().taskCountBanner(
      context: context,
      title: 'PROJECTS',
      firstTwoTasks: [
        Components().taskCount(
            context: context, count: 71.toString(), task: 'TOTAL TASKS'),
        Components().taskCount(
            context: context, count: 14.toString(), task: 'PENDING TASKS'),
      ],
      thirdTask: Components().taskCount(
          context: context, count: 2.toString(), task: 'TOTAL PROJECTS'),
    );
  }
}
