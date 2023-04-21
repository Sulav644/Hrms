import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

import '../../../core/app_widgets.dart';
import '../../../core/utils.dart';
import '../../holidays/components/horiz_list_tile.dart';
import '../../view_more_projects/components/entries_limit_widget.dart';

class TrainingList extends StatefulWidget {
  TrainingList({super.key});

  @override
  State<TrainingList> createState() => _TrainingListState();
}

class _TrainingListState extends State<TrainingList> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();
  String? trainingValue;
  String? trainerValue;
  String? employeesValue;

  @override
  Widget build(BuildContext context) {
    final path = 'assets/images/member_list';
    return AppWidgets().appScaffold(
        context: context,
        showMenuStatus: showMenuStatus,
        controller: scrollController,
        onClick: () {},
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Spacing().verticalSpace(context, 0.02),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Training',
                style: txtStyle(size: 18, weight: FontWeight.w600),
              ),
              GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return SingleChildScrollView(
                              child: AlertDialog(
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Add New Training',
                                      style: txtStyle(
                                          size: 22, weight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Training Type',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      Row(
                                        children: [
                                          Container(
                                            width: Sizes().ratioWithScrWidth(
                                                context, 0.455),
                                            height: Sizes().ratioWithScrHeight(
                                                context, 0.075),
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(2)),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                isExpanded: true,
                                                value: trainingValue,
                                                items: [
                                                  'Node Training',
                                                  'Swift Training',
                                                ]
                                                    .map(
                                                      (e) => DropdownMenuItem(
                                                        child: Text(
                                                          e,
                                                          style: txtStyle(
                                                              color: e ==
                                                                      trainingValue
                                                                  ? Colors.red
                                                                  : Colors
                                                                      .black),
                                                        ),
                                                        value: e,
                                                      ),
                                                    )
                                                    .toList(),
                                                onChanged: (value) {
                                                  setState(() {
                                                    this.trainingValue = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Trainer',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      Row(
                                        children: [
                                          Container(
                                            width: Sizes().ratioWithScrWidth(
                                                context, 0.455),
                                            height: Sizes().ratioWithScrHeight(
                                                context, 0.075),
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(2)),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                isExpanded: true,
                                                value: trainerValue,
                                                items: [
                                                  'Mike Litorus',
                                                  'John Doe',
                                                ]
                                                    .map(
                                                      (e) => DropdownMenuItem(
                                                        child: Text(
                                                          e,
                                                          style: txtStyle(
                                                              color: e ==
                                                                      trainerValue
                                                                  ? Colors.red
                                                                  : Colors
                                                                      .black),
                                                        ),
                                                        value: e,
                                                      ),
                                                    )
                                                    .toList(),
                                                onChanged: (value) {
                                                  setState(() {
                                                    this.trainerValue = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Employees',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      Row(
                                        children: [
                                          Container(
                                            width: Sizes().ratioWithScrWidth(
                                                context, 0.455),
                                            height: Sizes().ratioWithScrHeight(
                                                context, 0.075),
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(2)),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                isExpanded: true,
                                                value: employeesValue,
                                                items: [
                                                  'Bernardo Galaviz',
                                                  'Jeffrey Warden',
                                                ]
                                                    .map(
                                                      (e) => DropdownMenuItem(
                                                        child: Text(
                                                          e,
                                                          style: txtStyle(
                                                              color: e ==
                                                                      employeesValue
                                                                  ? Colors.red
                                                                  : Colors
                                                                      .black),
                                                        ),
                                                        value: e,
                                                      ),
                                                    )
                                                    .toList(),
                                                onChanged: (value) {
                                                  setState(() {
                                                    this.employeesValue = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Training Cost',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                          Text(
                                            ' *',
                                            style: txtStyle(color: Colors.red),
                                          )
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            suffixIcon:
                                                Icon(Icons.calendar_month)),
                                      ),
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Start Date',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                          Text(
                                            ' *',
                                            style: txtStyle(color: Colors.red),
                                          )
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      GestureDetector(
                                        onTap: () async {
                                          DateTime? newDate =
                                              await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime.now(),
                                                  lastDate: DateTime(2024));
                                          if (newDate != null) {
                                            print(DateFormat('yyyy-MM-dd')
                                                .format(newDate!));
                                            setState(() {});
                                          }
                                        },
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              suffixIcon:
                                                  Icon(Icons.calendar_month)),
                                        ),
                                      ),
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'End Date',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                          Text(
                                            ' *',
                                            style: txtStyle(color: Colors.red),
                                          )
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      GestureDetector(
                                        onTap: () async {
                                          DateTime? newDate =
                                              await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime.now(),
                                                  lastDate: DateTime(2024));
                                          if (newDate != null) {
                                            print(DateFormat('yyyy-MM-dd')
                                                .format(newDate!));
                                            setState(() {});
                                          }
                                        },
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              suffixIcon:
                                                  Icon(Icons.calendar_month)),
                                        ),
                                      ),
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Description',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                          Text(
                                            ' *',
                                            style: txtStyle(color: Colors.red),
                                          )
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      TextField(
                                          maxLines: 3,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                          )),
                                      Spacing().verticalSpace(context, 0.04),
                                      SizedBox(
                                        width: Sizes()
                                            .ratioWithScrWidth(context, 0.3),
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

                                              setState(() {});
                                            },
                                            child: Text('Submit')),
                                      )
                                    ]),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: addButton(
                      context: context, title: 'Add New', borderRad: 20))
            ]),
            Spacing().verticalSpace(context, 0.04),
            EntriesLimitWidget(),
            Spacing().verticalSpace(context, 0.03),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    HorizListTile(width: 0.06, child: Text('#')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.23, child: Text('Training Type')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.34, child: Text('Trainer')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.26, child: Text('Employee')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.18, child: Text('Time Duration')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.24, child: Text('Description')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.12, child: Text('Cost')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.26, child: Text('Status')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.18, child: Text('Actions')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    )
                  ]),
                  Row(children: [
                    HorizListTile(width: 0.17, child: Text('1')),
                    HorizListTile(width: 0.34, child: Text('Git Training')),
                    HorizListTile(
                        width: 0.45,
                        child: Row(children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/images/member_list/download.jpg'),
                            radius: 18,
                          ),
                          Spacing().horizontalSpace(context, 0.03),
                          Text('Wilmer Deluna')
                        ])),
                    HorizListTile(
                        width: 0.37,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ...[
                                '${path}/downloadTwo.jpg',
                                '${path}/downloadThree.jpg',
                              ]
                                  .map((e) => Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            e,
                                          ),
                                          radius: 16,
                                        ),
                                      ))
                                  .toList(),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.pink,
                                  child: Text(
                                    '+15',
                                    style: txtStyle(
                                        color: Colors.white,
                                        size: 12,
                                        weight: FontWeight.w500),
                                  ),
                                  radius: 16,
                                ),
                              ),
                            ])),
                    HorizListTile(
                        width: 0.296, child: Text('7 May 2019 - 10 May 2019')),
                    HorizListTile(
                        width: 0.345, child: Text('Lorem ipsum dollar')),
                    HorizListTile(width: 0.23, child: Text('\$400')),
                    HorizListTile(
                        width: 0.3,
                        child: Stack(
                          children: [
                            dropDownBox(
                                context: context,
                                onClick: () {},
                                color: Colors.green,
                                child: Text('Active')),
                            PopupMenuButton(
                              child: Container(
                                width: Sizes().ratioWithScrWidth(context, 0.3),
                                height:
                                    Sizes().ratioWithScrHeight(context, 0.04),
                                color: Colors.transparent,
                              ),
                              padding: EdgeInsets.zero,
                              offset: Offset(
                                  Sizes().ratioWithScrWidth(context, 0.01),
                                  Sizes().ratioWithScrHeight(context, 0.052)),
                              itemBuilder: (context) {
                                return [
                                  PopupMenuItem(
                                    child: Row(
                                      children: [
                                        circleInd(context, Colors.green),
                                        Spacing()
                                            .horizontalSpace(context, 0.02),
                                        Text(
                                          'Active',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    padding: EdgeInsets.only(
                                      top: Sizes()
                                          .ratioWithScrWidth(context, 0.02),
                                      left: Sizes()
                                          .ratioWithScrWidth(context, 0.03),
                                      bottom: Sizes()
                                          .ratioWithScrWidth(context, 0.02),
                                    ),
                                    height: 0,
                                  ),
                                  PopupMenuItem(
                                    child: Row(
                                      children: [
                                        circleInd(context, Colors.red),
                                        Spacing()
                                            .horizontalSpace(context, 0.02),
                                        Text(
                                          'Inactive',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    padding: EdgeInsets.only(
                                      top: Sizes()
                                          .ratioWithScrWidth(context, 0.02),
                                      left: Sizes()
                                          .ratioWithScrWidth(context, 0.03),
                                      bottom: Sizes()
                                          .ratioWithScrWidth(context, 0.02),
                                    ),
                                    height: 0,
                                  ),
                                ];
                              },
                            ),
                          ],
                        )),
                    HorizListTile(
                        width: 0.26,
                        child: Container(
                          width: Sizes().ratioWithScrWidth(context, 0.28),
                          alignment: Alignment.centerRight,
                          child: PopupMenuButton(
                            padding: EdgeInsets.zero,
                            offset: Offset(
                                1, Sizes().ratioWithScrHeight(context, 0.06)),
                            itemBuilder: (context) {
                              return [
                                ...[
                                  'Edit',
                                  'Delete',
                                ].map((e) => PopupMenuItem(
                                      child: Row(
                                        children: [
                                          e == 'Edit'
                                              ? Icon(Icons.edit_outlined)
                                              : Icon(Icons.delete_outline),
                                          Spacing()
                                              .horizontalSpace(context, 0.02),
                                          Text(
                                            e,
                                            style: txtStyle(
                                                size: 13,
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      padding: EdgeInsets.only(
                                          top: Sizes()
                                              .ratioWithScrWidth(context, 0.02),
                                          left: Sizes()
                                              .ratioWithScrWidth(context, 0.05),
                                          bottom: Sizes()
                                              .ratioWithScrWidth(context, 0.02),
                                          right: Sizes()
                                              .ratioWithScrWidth(context, 0.1)),
                                      height: 0,
                                    ))
                              ];
                            },
                          ),
                        )),
                  ])
                ],
              ),
            )
          ])
        ]);
  }

  Widget iconWrap(BuildContext context, VoidCallback onClick,
          List<IconData> icon, Alignment alignment, Color? iconColor) =>
      Container(
          width: Sizes().ratioWithScrWidth(context, 0.11),
          height: Sizes().ratioWithScrHeight(context, 0.02),
          alignment: alignment,
          child: Container(
            height: 20,
            child: GestureDetector(
              onTap: () => onClick(),
              child: Stack(
                children: [
                  Positioned(
                    right: 28,
                    child: Icon(
                      icon[0],
                      color: iconColor,
                      size: 16,
                    ),
                  ),
                  Positioned(
                    left: 4,
                    top: 4,
                    child: Icon(
                      icon[1],
                      size: 16,
                      color: Color.fromARGB(255, 139, 138, 138),
                    ),
                  ),
                ],
              ),
            ),
          ));

  Widget dropDownBox(
          {required BuildContext context,
          required VoidCallback onClick,
          required Widget child,
          required Color color}) =>
      GestureDetector(
        onTap: () => onClick(),
        child: Container(
            width: Sizes().ratioWithScrWidth(context, 0.32),
            height: Sizes().ratioWithScrHeight(context, 0.048),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Color.fromARGB(255, 51, 50, 50), width: 0.5),
                borderRadius: BorderRadius.circular(20)),
            alignment: Alignment.center,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              circleInd(context, color),
              Spacing().horizontalSpace(context, 0.018),
              child,
              Icon(Icons.arrow_drop_down)
            ])),
      );

  Widget circleInd(BuildContext context, Color color) => Container(
      width: Sizes().ratioWithScrWidth(context, 0.045),
      height: Sizes().ratioWithScrWidth(context, 0.045),
      decoration: BoxDecoration(
          border: Border.all(color: color, width: 3),
          borderRadius: BorderRadius.circular(100)),
      child: Container(
        width: Sizes().ratioWithScrWidth(context, 0.01),
        height: Sizes().ratioWithScrWidth(context, 0.01),
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(100)),
      ));

  Widget addButton(
          {required BuildContext context,
          required String title,
          required double borderRad}) =>
      Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 153, 69),
            borderRadius: BorderRadius.circular(borderRad)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Icon(
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
