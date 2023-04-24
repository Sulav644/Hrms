import 'package:flutter/material.dart';
import '../core/components.dart';

class ApplyLeave extends StatelessWidget {
  const ApplyLeave({super.key});

  @override
  Widget build(BuildContext context) {
    return Components().taskCountBanner(
      context: context,
      title: 'YOUR LEAVE',
      firstTwoTasks: [
        Components().taskCount(
            context: context, count: (4.5).toString(), task: 'LEAVE TAKEN'),
        Components().taskCount(
            context: context, count: 12.toString(), task: 'REMAINING'),
      ],
      applyButton: Components().applyButton(context: context, title: 'Leave'),
    );
  }
}
