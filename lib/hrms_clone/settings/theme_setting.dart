import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/core/app_widgets.dart';

class ThemeSetting extends StatelessWidget {
  ThemeSetting({super.key});
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
            Text('Theme Settings'),
            Row(
              children: [
                Text('Website Name'),
                Text('*'),
              ],
            ),
            TextField(
              controller:
                  TextEditingController(text: "Dreamguy's Technologies"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Light Logo'),
            Row(children: [
              ElevatedButton(onPressed: () {}, child: Text('Choose File')),
              Text('No file choosen')
            ]),
            Text('Recommended image size is 40px x 40px'),
            Text('Favicon'),
            Row(children: [
              ElevatedButton(onPressed: () {}, child: Text('Choose File')),
              Text('No file choosen')
            ]),
            Text('Recommended image size is 40px x 40px'),
          ],
        ),
      ],
    );
  }
}
