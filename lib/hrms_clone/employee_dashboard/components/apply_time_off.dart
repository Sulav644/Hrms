import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../core/components.dart';

class ApplyTimeOff extends StatelessWidget {
  const ApplyTimeOff({super.key});

  @override
  Widget build(BuildContext context) {
    return Components().taskCountBanner(
        context: context,
        title: 'YOUR TIME OFF ALLOWANCE',
        firstTwoTasks: [
          Components().taskCount(
              context: context, count: (5.0).toString(), task: 'APPROVED'),
          Components().taskCount(
              context: context, count: 15.toString(), task: 'REMAINING')
        ],
        applyButton:
            Components().applyButton(context: context, title: 'Time Off'));
  }
}
