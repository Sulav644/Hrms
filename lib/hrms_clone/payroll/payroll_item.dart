import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hrms_clone/hrms_clone/payroll/components/addition_pay.dart';
import 'package:hrms_clone/hrms_clone/payroll/components/overtime_pay.dart';
import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import '../project_detail_&_member/core/components.dart';

class PayRollItem extends StatefulWidget {
  const PayRollItem({super.key});

  @override
  State<PayRollItem> createState() => _PayRollItemState();
}

class _PayRollItemState extends State<PayRollItem> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();

  String? status;
  int toggleValue = 0;
  bool toggled = false;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return AppWidgets().appScaffold(
        context: context,
        showMenuStatus: showMenuStatus,
        controller: scrollController,
        onClick: () {},
        children: [
          Spacing().verticalSpace(context, 0.02),
          Row(
            children: [
              Text(
                'Payroll Items',
                style: txtStyle(size: 18, weight: FontWeight.w600),
              ),
            ],
          ),
          Spacing().verticalSpace(context, 0.04),
          Components().detailCard(
              context: context,
              padWid: 0.07,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      index = 0;
                    }),
                    child: optionItem(
                        title: 'Additions',
                        boxColor: index == 0
                            ? const Color.fromARGB(255, 214, 211, 211)
                            : Colors.white,
                        indColor: index == 0 ? Colors.orange : Colors.white),
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      index = 1;
                    }),
                    child: optionItem(
                        title: 'Overtime',
                        boxColor: index == 1
                            ? const Color.fromARGB(255, 214, 211, 211)
                            : Colors.white,
                        indColor: index == 1 ? Colors.orange : Colors.white),
                  )
                ]),
                Row(children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      index = 2;
                    }),
                    child: optionItem(
                        title: 'Deductions',
                        boxColor: index == 2
                            ? const Color.fromARGB(255, 214, 211, 211)
                            : Colors.white,
                        indColor: index == 2 ? Colors.orange : Colors.white),
                  ),
                ]),
              ]),
          Spacing().verticalSpace(context, 0.03),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            GestureDetector(
                onTap: () => showDialog(
                      context: context,
                      builder: (context) {
                        return SingleChildScrollView(
                          child: StatefulBuilder(
                            builder: (context, setState) {
                              return AlertDialog(
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text('Add Addition'),
                                  ],
                                ),
                                content: Column(children: [
                                  Spacing().verticalSpace(context, 0.02),
                                  Row(children: const [
                                    Text('Name'),
                                    Text('*'),
                                  ]),
                                  Spacing().verticalSpace(context, 0.01),
                                  const TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                  ),
                                  Spacing().verticalSpace(context, 0.02),
                                  Row(
                                    children: [
                                      Text(
                                        'Category',
                                        style:
                                            txtStyle(weight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Spacing().verticalSpace(context, 0.015),
                                  Container(
                                    height: Sizes()
                                        .ratioWithScrHeight(context, 0.075),
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(2)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        isExpanded: true,
                                        value: status ?? 'Select a category',
                                        items: [
                                          'Select a category',
                                          'Monthly remuneration',
                                          'Additional remuneration'
                                        ]
                                            .map(
                                              (e) => DropdownMenuItem(
                                                value: e,
                                                child: Text(
                                                  e,
                                                  style: txtStyle(
                                                      color: e == status
                                                          ? Colors.red
                                                          : Colors.black),
                                                ),
                                              ),
                                            )
                                            .toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            status = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Spacing().verticalSpace(context, 0.02),
                                  Row(children: const [
                                    Text('Unit calculation'),
                                  ]),
                                  Spacing().verticalSpace(context, 0.02),
                                  Row(children: [
                                    GestureDetector(
                                      onTap: () => setState(() {
                                        toggled = !toggled;
                                      }),
                                      child: AnimatedContainer(
                                          duration: const Duration(seconds: 1),
                                          width: Sizes()
                                              .ratioWithScrWidth(context, 0.16),
                                          height: Sizes().ratioWithScrHeight(
                                              context, 0.04),
                                          decoration: BoxDecoration(
                                              color: toggled
                                                  ? Colors.green
                                                  : Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          alignment: toggled
                                              ? Alignment.centerRight
                                              : Alignment.centerLeft,
                                          child: Padding(
                                            padding: toggled
                                                ? const EdgeInsets.only(
                                                    left: 0, right: 8)
                                                : const EdgeInsets.only(
                                                    left: 8.0, right: 0),
                                            child: Container(
                                              width: Sizes().ratioWithScrWidth(
                                                  context, 0.05),
                                              height: Sizes().ratioWithScrWidth(
                                                  context, 0.05),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                            ),
                                          )),
                                    )
                                  ]),
                                  Spacing().verticalSpace(context, 0.02),
                                  Row(children: const [
                                    Text('Unit Amount'),
                                  ]),
                                  Spacing().verticalSpace(context, 0.02),
                                  Row(children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 235, 231, 231),
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 202, 198, 198),
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('\$'),
                                        )),
                                    SizedBox(
                                      width: Sizes()
                                          .ratioWithScrWidth(context, 0.45),
                                      height: Sizes()
                                          .ratioWithScrHeight(context, 0.05),
                                      child: const TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 58, 57, 57)))),
                                      ),
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 233, 229, 229),
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 189, 185, 185),
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('.00'),
                                        )),
                                  ]),
                                  Spacing().verticalSpace(context, 0.02),
                                  Row(children: const [
                                    Text('Assignee'),
                                  ]),
                                  Spacing().verticalSpace(context, 0.02),
                                  Row(children: [
                                    SizedBox(
                                      width: 10,
                                      height: 10,
                                      child: Radio(
                                        value: 0,
                                        groupValue: toggleValue,
                                        onChanged: (value) {
                                          setState(() {
                                            toggleValue = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    Spacing().horizontalSpace(context, 0.02),
                                    Text(
                                      'No assignee',
                                      style: txtStyle(size: 12),
                                    ),
                                    Spacing().horizontalSpace(context, 0.04),
                                    SizedBox(
                                      width: 10,
                                      height: 10,
                                      child: Radio(
                                        value: 1,
                                        groupValue: toggleValue,
                                        onChanged: (value) {
                                          setState(() {
                                            toggleValue = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    Spacing().horizontalSpace(context, 0.02),
                                    Text('All employees',
                                        style: txtStyle(size: 12)),
                                  ]),
                                  Spacing().verticalSpace(context, 0.06),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: Sizes()
                                            .ratioWithScrWidth(context, 0.6),
                                        height: Sizes()
                                            .ratioWithScrHeight(context, 0.06),
                                        child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.orange),
                                                shape:
                                                    MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)))),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'Submit',
                                              style: txtStyle(
                                                  size: 20,
                                                  color: Colors.white,
                                                  weight: FontWeight.w400),
                                            )),
                                      ),
                                    ],
                                  ),
                                ]),
                              );
                            },
                          ),
                        );
                      },
                    ),
                child: addButton(
                    context: context, title: 'Add Addition', borderRad: 10)),
          ]),
          Spacing().verticalSpace(context, 0.035),
          Components().detailCard(
              context: context,
              padWid: 0.05,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.start,
              children: [
                if (index == 0) const AdditionPay(),
                if (index == 1) const OvertimePay(),
                if (index == 2)
                  Column(
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
                            child: Row(
                              children: [
                                HorizListTile(
                                    width: 0.3,
                                    child: Text('Name',
                                        style: txtStyle(
                                            weight: FontWeight.w600,
                                            height: 1.4))),
                                HorizListTile(
                                    width: 0.3,
                                    child: Text('Default/Unit\nAmount',
                                        style: txtStyle(
                                            weight: FontWeight.w600,
                                            height: 1.4))),
                                HorizListTile(
                                    width: 0.2,
                                    child: Text('Action',
                                        style: txtStyle(
                                            weight: FontWeight.w600,
                                            height: 1.4))),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacing().verticalSpace(context, 0.02),
                      Row(
                        children: [
                          HorizListTile(
                              width: 0.3,
                              child: Text('Absent amount',
                                  style: txtStyle(
                                      weight: FontWeight.w400, height: 1.4))),
                          HorizListTile(
                              width: 0.3,
                              child: Text('\$12',
                                  style: txtStyle(
                                      weight: FontWeight.w400, height: 1.4))),
                          HorizListTile(
                              width: 0.2,
                              child: PopupMenuButton(
                                itemBuilder: (context) {
                                  return [];
                                },
                              )),
                        ],
                      ),
                    ],
                  )
              ])
        ]);
  }

  Widget optionItem({
    required String title,
    required Color boxColor,
    required Color indColor,
  }) =>
      Stack(
        children: [
          AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              color: boxColor,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Sizes().ratioWithScrHeight(context, 0.015),
                    horizontal: Sizes().ratioWithScrWidth(context, 0.06)),
                child: Text(title,
                    style: txtStyle(weight: FontWeight.w600, height: 1.4)),
              )),
          Transform(
            transform: Matrix4.skewY(40 / 180 * pi),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              width: 4,
              height: Sizes().ratioWithScrHeight(context, 0.03),
              color: indColor,
            ),
          ),
          Positioned(
            top: Sizes().ratioWithScrHeight(context, 0.02),
            child: Transform(
              transform: Matrix4.skewY(-40 / 180 * pi),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                width: 4,
                height: Sizes().ratioWithScrHeight(context, 0.03),
                color: indColor,
              ),
            ),
          )
        ],
      );
  Widget addButton(
          {required BuildContext context,
          required String title,
          required double borderRad}) =>
      Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 153, 69),
            borderRadius: BorderRadius.circular(borderRad)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            const Icon(
              Icons.add,
              size: 16,
              color: Colors.white,
            ),
            Spacing().horizontalSpace(context, 0.005),
            Text(
              title,
              style: txtStyle(color: Colors.white, size: 16),
            ),
          ]),
        ),
      );
}
