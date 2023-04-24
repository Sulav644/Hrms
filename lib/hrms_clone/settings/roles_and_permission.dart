import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/core/app_widgets.dart';
import 'package:hrms_clone/hrms_clone/settings/components/admin_selection.dart';
import 'package:hrms_clone/hrms_clone/settings/data/check_box.dart';
import 'package:hrms_clone/hrms_clone/settings/domain/check_box_cubit.dart';

import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';

class RolesAndPermission extends StatefulWidget {
  const RolesAndPermission({super.key});

  @override
  State<RolesAndPermission> createState() => _RolesAndPermissionState();
}

class _RolesAndPermissionState extends State<RolesAndPermission> {
  bool showMenuStatus = false;

  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final headerStyle = txtStyle(weight: FontWeight.w600, height: 1.4);
    final listStyle = txtStyle(weight: FontWeight.w400, height: 1.4);
    final checkBoxItems = ['Employee', 'Holidays', 'Leaves', 'Events'];
    final checkBoxList = context.watch<CheckBoxCubit>().state;
    final moduleList = [
      'Employee',
      'Holiday',
      'Leaves',
      'Events',
      'Chat',
      'Jobs'
    ];
    final moduleStates = context.watch<ToggleButtonCubit>().state;
    final adminList = [
      'CEO',
      'Manager',
      'Team Leader',
      'Accountant',
      'Web Developer',
      'Web Designer',
      'HR',
      'UI/UX Developer',
      'SEO Analyst'
    ];
    final adminStates = context.watch<AdminSelectCubit>().state;
    return AppWidgets().settingScaffold(
      context: context,
      showMenuStatus: showMenuStatus,
      controller: controller,
      onClick: () {},
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacing().verticalSpace(context, 0.02),
            Text(
              'Roles & Permissions',
              style: txtStyle(size: 18, weight: FontWeight.w600),
            ),
            Spacing().verticalSpace(context, 0.04),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '+',
                      style: txtStyle(
                          size: 20,
                          color: Colors.white,
                          weight: FontWeight.w600),
                    ),
                    Spacing().horizontalSpace(context, 0.01),
                    const Text('Add Roles')
                  ],
                )),
            Spacing().verticalSpace(context, 0.02),
            Stack(
              children: [
                Container(
                    width: Sizes().scrWidth(context),
                    height: Sizes().ratioWithScrHeight(context, 0.07),
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            top: BorderSide(
                                color: Color.fromARGB(255, 199, 195, 195)),
                            right: BorderSide(
                                color: Color.fromARGB(255, 199, 195, 195)))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: Sizes().ratioWithScrWidth(context, 0.05)),
                      child: Text(
                        'Administrator',
                        style: txtStyle(color: Colors.orange),
                      ),
                    )),
                Positioned(
                  top: 4,
                  child: Container(
                    width: 4,
                    height: Sizes().ratioWithScrHeight(context, 0.068),
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
            ...adminList
                .map(
                  (e) => AdminSelection(
                    title: e,
                    adminState: adminStates,
                  ),
                )
                .toList(),
            Spacing().verticalSpace(context, 0.04),
            Text(
              'Module Access',
              style: txtStyle(size: 18, weight: FontWeight.w600),
            ),
            Spacing().verticalSpace(context, 0.04),
            ...moduleList
                .map(
                  (e) => Container(
                      width: Sizes().scrWidth(context),
                      height: Sizes().ratioWithScrHeight(context, 0.07),
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                Sizes().ratioWithScrWidth(context, 0.04)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e),
                            GestureDetector(
                              onTap: () => moduleStates.contains(e)
                                  ? context
                                      .read<ToggleButtonCubit>()
                                      .removeCheckBox(e)
                                  : context
                                      .read<ToggleButtonCubit>()
                                      .addCheckBox(e),
                              child: AnimatedContainer(
                                  duration: const Duration(seconds: 1),
                                  width:
                                      Sizes().ratioWithScrWidth(context, 0.16),
                                  height:
                                      Sizes().ratioWithScrHeight(context, 0.04),
                                  decoration: BoxDecoration(
                                      color: moduleStates.contains(e)
                                          ? Colors.green
                                          : Colors.red,
                                      borderRadius: BorderRadius.circular(20)),
                                  alignment: moduleStates.contains(e)
                                      ? Alignment.centerRight
                                      : Alignment.centerLeft,
                                  child: Padding(
                                    padding: moduleStates.contains(e)
                                        ? const EdgeInsets.only(
                                            left: 0, right: 8)
                                        : const EdgeInsets.only(
                                            left: 8.0, right: 0),
                                    child: Container(
                                      width: Sizes()
                                          .ratioWithScrWidth(context, 0.06),
                                      height: Sizes()
                                          .ratioWithScrWidth(context, 0.06),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      )),
                )
                .toList(),
            Spacing().verticalSpace(context, 0.04),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Container(
                    height: Sizes().ratioWithScrHeight(context, 0.097),
                    alignment: Alignment.topCenter,
                    color: const Color.fromARGB(255, 209, 206, 206),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: Sizes().ratioWithScrHeight(context, 0.002)),
                      child: Container(
                        height: Sizes().ratioWithScrHeight(context, 0.09),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Sizes().ratioWithScrWidth(context, 0.04)),
                          child: Row(
                            children: [
                              HorizListTile(
                                  width: 0.24,
                                  child: Text(
                                    'Module\nPermission',
                                    style: headerStyle,
                                  )),
                              HorizListTile(
                                  width: 0.16,
                                  child: Text('Read', style: headerStyle)),
                              HorizListTile(
                                  width: 0.16,
                                  child: Text('Write', style: headerStyle)),
                              HorizListTile(
                                  width: 0.16,
                                  child: Text('Create', style: headerStyle)),
                              HorizListTile(
                                  width: 0.16,
                                  child: Text('Delete', style: headerStyle)),
                              HorizListTile(
                                  width: 0.16,
                                  child: Text('Import', style: headerStyle)),
                              HorizListTile(
                                  width: 0.16,
                                  child: Text('Export', style: headerStyle)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ...checkBoxItems
                      .map(
                        (e) => Column(
                          children: [
                            Container(
                              height: Sizes().ratioWithScrHeight(context, 0.09),
                              color: checkBoxItems.indexOf(e).isEven
                                  ? Colors.transparent
                                  : Colors.white,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: Sizes()
                                        .ratioWithScrWidth(context, 0.04)),
                                child: Row(
                                  children: [
                                    HorizListTile(
                                        width: 0.24,
                                        child: Text(e, style: listStyle)),
                                    HorizListTile(
                                        width: 0.16,
                                        child: Checkbox(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          onChanged: (value) {
                                            checkBoxList
                                                    .where((element) =>
                                                        element.type == e &&
                                                        element.firstIndex ==
                                                            0 &&
                                                        element.secondIndex ==
                                                            0)
                                                    .isNotEmpty
                                                ? context
                                                    .read<CheckBoxCubit>()
                                                    .removeCheckBox(
                                                        CheckBoxData(
                                                            type: e,
                                                            firstIndex: 0,
                                                            secondIndex: 0))
                                                : context
                                                    .read<CheckBoxCubit>()
                                                    .addCheckBox(CheckBoxData(
                                                        type: e,
                                                        firstIndex: 0,
                                                        secondIndex: 0));
                                          },
                                          value: checkBoxList
                                              .where((element) =>
                                                  element.type == e &&
                                                  element.firstIndex == 0 &&
                                                  element.secondIndex == 0)
                                              .isNotEmpty,
                                        )),
                                    HorizListTile(
                                        width: 0.16,
                                        child: Checkbox(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          onChanged: (value) {
                                            checkBoxList
                                                    .where((element) =>
                                                        element.type == e &&
                                                        element.firstIndex ==
                                                            0 &&
                                                        element.secondIndex ==
                                                            1)
                                                    .isNotEmpty
                                                ? context
                                                    .read<CheckBoxCubit>()
                                                    .removeCheckBox(
                                                        CheckBoxData(
                                                            type: e,
                                                            firstIndex: 0,
                                                            secondIndex: 1))
                                                : context
                                                    .read<CheckBoxCubit>()
                                                    .addCheckBox(CheckBoxData(
                                                        type: e,
                                                        firstIndex: 0,
                                                        secondIndex: 1));
                                          },
                                          value: checkBoxList
                                              .where((element) =>
                                                  element.type == e &&
                                                  element.firstIndex == 0 &&
                                                  element.secondIndex == 1)
                                              .isNotEmpty,
                                        )),
                                    HorizListTile(
                                        width: 0.16,
                                        child: Checkbox(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          onChanged: (value) {
                                            checkBoxList
                                                    .where((element) =>
                                                        element.type == e &&
                                                        element.firstIndex ==
                                                            0 &&
                                                        element.secondIndex ==
                                                            2)
                                                    .isNotEmpty
                                                ? context
                                                    .read<CheckBoxCubit>()
                                                    .removeCheckBox(
                                                        CheckBoxData(
                                                            type: e,
                                                            firstIndex: 0,
                                                            secondIndex: 2))
                                                : context
                                                    .read<CheckBoxCubit>()
                                                    .addCheckBox(CheckBoxData(
                                                        type: e,
                                                        firstIndex: 0,
                                                        secondIndex: 2));
                                          },
                                          value: checkBoxList
                                              .where((element) =>
                                                  element.type == e &&
                                                  element.firstIndex == 0 &&
                                                  element.secondIndex == 2)
                                              .isNotEmpty,
                                        )),
                                    HorizListTile(
                                        width: 0.16,
                                        child: Checkbox(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          onChanged: (value) {
                                            checkBoxList
                                                    .where((element) =>
                                                        element.type == e &&
                                                        element.firstIndex ==
                                                            0 &&
                                                        element.secondIndex ==
                                                            3)
                                                    .isNotEmpty
                                                ? context
                                                    .read<CheckBoxCubit>()
                                                    .removeCheckBox(
                                                        CheckBoxData(
                                                            type: e,
                                                            firstIndex: 0,
                                                            secondIndex: 3))
                                                : context
                                                    .read<CheckBoxCubit>()
                                                    .addCheckBox(CheckBoxData(
                                                        type: e,
                                                        firstIndex: 0,
                                                        secondIndex: 3));
                                          },
                                          value: checkBoxList
                                              .where((element) =>
                                                  element.type == e &&
                                                  element.firstIndex == 0 &&
                                                  element.secondIndex == 3)
                                              .isNotEmpty,
                                        )),
                                    HorizListTile(
                                        width: 0.16,
                                        child: Checkbox(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          onChanged: (value) {
                                            checkBoxList
                                                    .where((element) =>
                                                        element.type == e &&
                                                        element.firstIndex ==
                                                            0 &&
                                                        element.secondIndex ==
                                                            4)
                                                    .isNotEmpty
                                                ? context
                                                    .read<CheckBoxCubit>()
                                                    .removeCheckBox(
                                                        CheckBoxData(
                                                            type: e,
                                                            firstIndex: 0,
                                                            secondIndex: 4))
                                                : context
                                                    .read<CheckBoxCubit>()
                                                    .addCheckBox(CheckBoxData(
                                                        type: e,
                                                        firstIndex: 0,
                                                        secondIndex: 4));
                                          },
                                          value: checkBoxList
                                              .where((element) =>
                                                  element.type == e &&
                                                  element.firstIndex == 0 &&
                                                  element.secondIndex == 4)
                                              .isNotEmpty,
                                        )),
                                    HorizListTile(
                                        width: 0.16,
                                        child: Checkbox(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          onChanged: (value) {
                                            checkBoxList
                                                    .where((element) =>
                                                        element.type == e &&
                                                        element.firstIndex ==
                                                            0 &&
                                                        element.secondIndex ==
                                                            5)
                                                    .isNotEmpty
                                                ? context
                                                    .read<CheckBoxCubit>()
                                                    .removeCheckBox(
                                                        CheckBoxData(
                                                            type: e,
                                                            firstIndex: 0,
                                                            secondIndex: 5))
                                                : context
                                                    .read<CheckBoxCubit>()
                                                    .addCheckBox(CheckBoxData(
                                                        type: e,
                                                        firstIndex: 0,
                                                        secondIndex: 5));
                                          },
                                          value: checkBoxList
                                              .where((element) =>
                                                  element.type == e &&
                                                  element.firstIndex == 0 &&
                                                  element.secondIndex == 5)
                                              .isNotEmpty,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: Sizes().ratioWithScrWidth(context, 1.24),
                              height:
                                  Sizes().ratioWithScrHeight(context, 0.004),
                              color: const Color.fromARGB(255, 209, 206, 206),
                            )
                          ],
                        ),
                      )
                      .toList()
                ],
              ),
            ),
            Spacing().verticalSpace(context, 0.04),
          ],
        ),
      ],
    );
  }
}
