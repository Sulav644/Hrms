import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/core/app_widgets.dart';
import 'package:hrms_clone/hrms_clone/settings/components/admin_selection.dart';

import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';

class InvoiceSetting extends StatelessWidget {
  InvoiceSetting({super.key});
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
            Text('Invoice Settings'),
            Row(
              children: [
                Text('Invoice prefix'),
              ],
            ),
            TextField(
              controller: TextEditingController(text: "INV"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Invoice Logo'),
            Row(children: [
              ElevatedButton(onPressed: () {}, child: Text('Choose File')),
              Text('No file choosen')
            ]),
            Text('Recommended image size is 200px x 40px'),
          ],
        ),
      ],
    );
  }
}
