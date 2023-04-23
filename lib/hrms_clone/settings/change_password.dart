import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/core/app_widgets.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({super.key});
  bool showMenuStatus = false;
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return AppWidgets().settingScaffold(
      context: context,
      showMenuStatus: showMenuStatus,
      controller: controller,
      onClick: () {},
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Change Password'),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('they matched'),
                    Text('Current password'),
                  ],
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Row(
              children: [
                Text('New password'),
              ],
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Row(
              children: [
                Text('Confirm password'),
              ],
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ],
        ),
      ],
    );
  }
}
