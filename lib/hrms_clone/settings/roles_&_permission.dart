import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/core/app_widgets.dart';
import 'package:hrms_clone/hrms_clone/settings/components/admin_selection.dart';

import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';

class RolesAndPermission extends StatelessWidget {
  RolesAndPermission({super.key});
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
            Text('Roles & Permissions'),
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('+'), Text('Add Roles')],
                )),
            Stack(
              children: [
                Container(
                    width: Sizes().scrWidth(context),
                    height: Sizes().ratioWithScrHeight(context, 0.07),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            top: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: Sizes().ratioWithScrWidth(context, 0.04)),
                      child: Text('Administrator'),
                    )),
                Positioned(
                  top: 4,
                  child: Container(
                    width: 4,
                    height: Sizes().ratioWithScrHeight(context, 0.068),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
            ...[
              'CEO',
              'Manager',
              'Team Leader',
              'Accountant',
              'Web Developer',
              'Web Designer',
              'HR',
              'UI/UX Developer',
              'SEO Analyst'
            ]
                .map(
                  (e) => AdminSelection(title: e),
                )
                .toList(),
            Text('Module Access'),
            ...['Employee', 'Holiday', 'Leaves', 'Events', 'Chat', 'Jobs']
                .map(
                  (e) => Container(
                      width: Sizes().scrWidth(context),
                      height: Sizes().ratioWithScrHeight(context, 0.07),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: Sizes().ratioWithScrWidth(context, 0.04)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e),
                            AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: Sizes().ratioWithScrWidth(context, 0.2),
                                height:
                                    Sizes().ratioWithScrHeight(context, 0.05),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)),
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 0),
                                  child: Container(
                                    width: Sizes()
                                        .ratioWithScrWidth(context, 0.07),
                                    height: Sizes()
                                        .ratioWithScrWidth(context, 0.07),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ))
                          ],
                        ),
                      )),
                )
                .toList(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      HorizListTile(
                          width: 0.24,
                          child: Text(
                            'Module\nPermission',
                          )),
                      HorizListTile(
                          width: 0.16,
                          child: Text(
                            'Read',
                          )),
                      HorizListTile(
                          width: 0.16,
                          child: Text(
                            'Write',
                          )),
                      HorizListTile(
                          width: 0.16,
                          child: Text(
                            'Create',
                          )),
                      HorizListTile(
                          width: 0.16,
                          child: Text(
                            'Delete',
                          )),
                      HorizListTile(
                          width: 0.16,
                          child: Text(
                            'Import',
                          )),
                      HorizListTile(
                          width: 0.16,
                          child: Text(
                            'Export',
                          )),
                    ],
                  ),
                  ...['Employee', 'Holidays', 'Leaves', 'Events']
                      .map(
                        (e) => Row(
                          children: [
                            HorizListTile(
                                width: 0.24,
                                child: Text(
                                  e,
                                )),
                            HorizListTile(
                                width: 0.16,
                                child: Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  onChanged: (value) {},
                                  value: true,
                                )),
                            HorizListTile(
                                width: 0.16,
                                child: Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  onChanged: (value) {},
                                  value: true,
                                )),
                            HorizListTile(
                                width: 0.16,
                                child: Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  onChanged: (value) {},
                                  value: true,
                                )),
                            HorizListTile(
                                width: 0.16,
                                child: Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  onChanged: (value) {},
                                  value: true,
                                )),
                            HorizListTile(
                                width: 0.16,
                                child: Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  onChanged: (value) {},
                                  value: true,
                                )),
                            HorizListTile(
                                width: 0.16,
                                child: Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  onChanged: (value) {},
                                  value: true,
                                )),
                          ],
                        ),
                      )
                      .toList()
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
