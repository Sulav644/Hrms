import 'package:flutter/material.dart';
import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import '../view_more_projects/components/entries_limit_widget.dart';
import 'data/goal_detail.dart';

List<GoalTrackDetail> goalTrackList = [
  const GoalTrackDetail(
      type: 'Another\nOne',
      subject: 'Coding',
      target: 'infinity',
      endDate: '2020-\n10-10',
      description: 'This is the thing I always want to do',
      isActive: true,
      progress: 80),
  const GoalTrackDetail(
      type: 'Another\nOne',
      subject: 'This is a test',
      target: 'infinity',
      endDate: '2020-\n10-10',
      description: 'This is a test',
      isActive: true,
      progress: 50),
  const GoalTrackDetail(
      type: 'Invoice\nOne',
      subject: 'This is\nanother\ntext',
      target: 'kingdom come',
      endDate: '2020-\n10-10',
      description: 'This is the thing I always want to do',
      isActive: false,
      progress: 0),
];

class GoalList extends StatefulWidget {
  const GoalList({super.key});

  @override
  State<GoalList> createState() => _GoalListState();
}

class _GoalListState extends State<GoalList> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();

  String? goalType;

  String? statusValue;

  @override
  Widget build(BuildContext context) {
    final headerStyle = txtStyle(weight: FontWeight.w600, height: 1.4);
    final listStyle = txtStyle(weight: FontWeight.w400, height: 1.4);
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
                'Goal Tracking',
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
                                      'Add Goal Tracking',
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
                                            'Goal Type',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      Container(
                                        height: Sizes()
                                            .ratioWithScrHeight(context, 0.075),
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            isExpanded: true,
                                            value:
                                                goalType ?? 'Select Goal Type',
                                            items: [
                                              'Select Goal Type',
                                              'Invoice Goal',
                                              'Another One'
                                            ]
                                                .map(
                                                  (e) => DropdownMenuItem(
                                                    value: e,
                                                    child: Text(
                                                      e,
                                                      style: txtStyle(
                                                          color: e == goalType
                                                              ? Colors.red
                                                              : Colors.black),
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                            onChanged: (value) {
                                              setState(() {
                                                goalType = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Spacing().verticalSpace(context, 0.04),
                                      Row(
                                        children: [
                                          Text(
                                            'Subject',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      const TextField(
                                          decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      )),
                                      Spacing().verticalSpace(context, 0.04),
                                      Row(
                                        children: [
                                          Text(
                                            'Target Achievement',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      const TextField(
                                          decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      )),
                                      Spacing().verticalSpace(context, 0.04),
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
                                            setState(() {});
                                          }
                                        },
                                        child: const TextField(
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
                                            setState(() {});
                                          }
                                        },
                                        child: const TextField(
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
                                      const TextField(
                                          maxLines: 3,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                          )),
                                      Spacing().verticalSpace(context, 0.04),
                                      Row(
                                        children: [
                                          Text(
                                            'Status',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      Container(
                                        height: Sizes()
                                            .ratioWithScrHeight(context, 0.075),
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            isExpanded: true,
                                            value: goalType ?? 'Active',
                                            items: [
                                              'Active',
                                              'Inactive',
                                            ]
                                                .map(
                                                  (e) => DropdownMenuItem(
                                                    value: e,
                                                    child: Text(
                                                      e,
                                                      style: txtStyle(
                                                          color: e == goalType
                                                              ? Colors.red
                                                              : Colors.black),
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                            onChanged: (value) {
                                              setState(() {
                                                goalType = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Spacing().verticalSpace(context, 0.04),
                                      SizedBox(
                                        width: Sizes()
                                            .ratioWithScrWidth(context, 0.38),
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
                                            child: Text(
                                              'Submit',
                                              style: txtStyle(
                                                  color: Colors.white,
                                                  size: 18,
                                                  weight: FontWeight.w500),
                                            )),
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
            const EntriesLimitWidget(),
            Spacing().verticalSpace(context, 0.03),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          child: Row(children: [
                            HorizListTile(
                                width: 0.06,
                                child: Text(
                                  '#',
                                  style: headerStyle,
                                )),
                            HorizListTile(
                              width: 0.11,
                              child: iconWrap(
                                  context,
                                  () {},
                                  [Icons.arrow_upward, Icons.arrow_downward],
                                  Alignment.bottomCenter,
                                  const Color.fromARGB(255, 139, 138, 138)),
                            ),
                            HorizListTile(
                                width: 0.12,
                                child: Text('Goal Type', style: headerStyle)),
                            HorizListTile(
                              width: 0.11,
                              child: iconWrap(
                                  context,
                                  () {},
                                  [Icons.arrow_upward, Icons.arrow_downward],
                                  Alignment.bottomCenter,
                                  const Color.fromARGB(255, 139, 138, 138)),
                            ),
                            HorizListTile(
                                width: 0.16,
                                child: Text('Subject', style: headerStyle)),
                            HorizListTile(
                              width: 0.11,
                              child: iconWrap(
                                  context,
                                  () {},
                                  [Icons.arrow_upward, Icons.arrow_downward],
                                  Alignment.bottomCenter,
                                  const Color.fromARGB(255, 139, 138, 138)),
                            ),
                            HorizListTile(
                                width: 0.24,
                                child: Text('Target \nAchievement',
                                    style: headerStyle)),
                            HorizListTile(
                              width: 0.11,
                              child: iconWrap(
                                  context,
                                  () {},
                                  [Icons.arrow_upward, Icons.arrow_downward],
                                  Alignment.bottomCenter,
                                  const Color.fromARGB(255, 139, 138, 138)),
                            ),
                            HorizListTile(
                                width: 0.12,
                                child: Text('Start Date', style: headerStyle)),
                            HorizListTile(
                              width: 0.11,
                              child: iconWrap(
                                  context,
                                  () {},
                                  [Icons.arrow_upward, Icons.arrow_downward],
                                  Alignment.bottomCenter,
                                  const Color.fromARGB(255, 139, 138, 138)),
                            ),
                            HorizListTile(
                                width: 0.12,
                                child: Text('End Date', style: headerStyle)),
                            HorizListTile(
                              width: 0.11,
                              child: iconWrap(
                                  context,
                                  () {},
                                  [Icons.arrow_upward, Icons.arrow_downward],
                                  Alignment.bottomCenter,
                                  const Color.fromARGB(255, 139, 138, 138)),
                            ),
                            HorizListTile(
                                width: 0.26,
                                child: Text('Description', style: headerStyle)),
                            HorizListTile(
                              width: 0.11,
                              child: iconWrap(
                                  context,
                                  () {},
                                  [Icons.arrow_upward, Icons.arrow_downward],
                                  Alignment.bottomCenter,
                                  const Color.fromARGB(255, 139, 138, 138)),
                            ),
                            HorizListTile(
                                width: 0.26,
                                child: Text('Status', style: headerStyle)),
                            HorizListTile(
                              width: 0.11,
                              child: iconWrap(
                                  context,
                                  () {},
                                  [Icons.arrow_upward, Icons.arrow_downward],
                                  Alignment.bottomCenter,
                                  const Color.fromARGB(255, 139, 138, 138)),
                            ),
                            HorizListTile(
                                width: 0.2,
                                child: Text('Progress', style: headerStyle)),
                            HorizListTile(
                              width: 0.11,
                              child: iconWrap(
                                  context,
                                  () {},
                                  [Icons.arrow_upward, Icons.arrow_downward],
                                  Alignment.bottomCenter,
                                  const Color.fromARGB(255, 139, 138, 138)),
                            ),
                            HorizListTile(
                                width: 0.18,
                                child: Text('Actions', style: headerStyle)),
                            HorizListTile(
                              width: 0.11,
                              child: iconWrap(
                                  context,
                                  () {},
                                  [Icons.arrow_upward, Icons.arrow_downward],
                                  Alignment.bottomCenter,
                                  const Color.fromARGB(255, 139, 138, 138)),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ),
                  ...goalTrackList
                      .map(
                        (e) => Column(
                          children: [
                            Container(
                              height: Sizes().ratioWithScrHeight(context, 0.14),
                              color: goalTrackList.indexOf(e).isEven
                                  ? Colors.transparent
                                  : Colors.white,
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: Sizes()
                                        .ratioWithScrWidth(context, 0.04)),
                                child: Row(children: [
                                  HorizListTile(
                                      width: 0.17,
                                      child: Text(
                                        '${goalTrackList.indexOf(e) + 1}',
                                        style: listStyle,
                                      )),
                                  HorizListTile(
                                      width: 0.23,
                                      child:
                                          Text('${e.type}', style: listStyle)),
                                  HorizListTile(
                                      width: 0.27,
                                      child: Text('${e.subject}',
                                          style: listStyle)),
                                  HorizListTile(
                                      width: 0.35,
                                      child: Text('Code till time\n${e.target}',
                                          style: listStyle)),
                                  HorizListTile(
                                      width: 0.23,
                                      child: Text('2020-\n09-25',
                                          style: listStyle)),
                                  HorizListTile(
                                      width: 0.235,
                                      child: Text('${e.endDate}',
                                          style: listStyle)),
                                  HorizListTile(
                                      width: 0.365,
                                      child: Text('${e.description}',
                                          style: listStyle)),
                                  HorizListTile(
                                      width: 0.38,
                                      child: Stack(
                                        children: [
                                          dropDownBox(
                                              context: context,
                                              onClick: () {},
                                              color: e.isActive!
                                                  ? Colors.green
                                                  : Colors.red,
                                              child: Text(e.isActive!
                                                  ? 'Active'
                                                  : 'Inactive')),
                                          PopupMenuButton(
                                            padding: EdgeInsets.zero,
                                            offset: Offset(
                                                Sizes().ratioWithScrWidth(
                                                    context, 0.01),
                                                Sizes().ratioWithScrHeight(
                                                    context, 0.052)),
                                            itemBuilder: (context) {
                                              return [
                                                PopupMenuItem(
                                                  padding: EdgeInsets.only(
                                                    top: Sizes()
                                                        .ratioWithScrWidth(
                                                            context, 0.02),
                                                    left: Sizes()
                                                        .ratioWithScrWidth(
                                                            context, 0.03),
                                                    bottom: Sizes()
                                                        .ratioWithScrWidth(
                                                            context, 0.02),
                                                  ),
                                                  height: 0,
                                                  child: Row(
                                                    children: [
                                                      circleInd(context,
                                                          Colors.green),
                                                      Spacing().horizontalSpace(
                                                          context, 0.02),
                                                      Text(
                                                        'Active',
                                                        style: txtStyle(
                                                            weight: FontWeight
                                                                .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                PopupMenuItem(
                                                  padding: EdgeInsets.only(
                                                    top: Sizes()
                                                        .ratioWithScrWidth(
                                                            context, 0.02),
                                                    left: Sizes()
                                                        .ratioWithScrWidth(
                                                            context, 0.03),
                                                    bottom: Sizes()
                                                        .ratioWithScrWidth(
                                                            context, 0.02),
                                                  ),
                                                  height: 0,
                                                  child: Row(
                                                    children: [
                                                      circleInd(
                                                          context, Colors.red),
                                                      Spacing().horizontalSpace(
                                                          context, 0.02),
                                                      Text(
                                                        'Inactive',
                                                        style: txtStyle(
                                                            weight: FontWeight
                                                                .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ];
                                            },
                                            child: Container(
                                              width: Sizes().ratioWithScrWidth(
                                                  context, 0.3),
                                              height: Sizes()
                                                  .ratioWithScrHeight(
                                                      context, 0.04),
                                              color: Colors.transparent,
                                            ),
                                          ),
                                        ],
                                      )),
                                  HorizListTile(
                                      width: 0.3,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Completed \n${e.progress}%',
                                            style: listStyle,
                                          ),
                                          Spacing()
                                              .verticalSpace(context, 0.01),
                                          Stack(
                                            children: [
                                              labelBar(
                                                  context: context,
                                                  width: 0.23,
                                                  color: Colors.black,
                                                  borderRad: [10, 10, 10, 10]),
                                              labelBar(
                                                  context: context,
                                                  width: 0.2,
                                                  color: Colors.orange,
                                                  borderRad: [10, 10, 10, 10]),
                                            ],
                                          )
                                        ],
                                      )),
                                  HorizListTile(
                                      width: 0.26,
                                      child: Container(
                                        width: Sizes()
                                            .ratioWithScrWidth(context, 0.28),
                                        alignment: Alignment.centerRight,
                                        child: PopupMenuButton(
                                          padding: EdgeInsets.zero,
                                          offset: Offset(
                                              1,
                                              Sizes().ratioWithScrHeight(
                                                  context, 0.06)),
                                          itemBuilder: (context) {
                                            return [
                                              ...[
                                                'Edit',
                                                'Delete',
                                              ].map((e) => PopupMenuItem(
                                                    padding: EdgeInsets.only(
                                                        top: Sizes()
                                                            .ratioWithScrWidth(
                                                                context, 0.02),
                                                        left: Sizes()
                                                            .ratioWithScrWidth(
                                                                context, 0.05),
                                                        bottom: Sizes()
                                                            .ratioWithScrWidth(
                                                                context, 0.02),
                                                        right: Sizes()
                                                            .ratioWithScrWidth(
                                                                context, 0.1)),
                                                    height: 0,
                                                    child: Row(
                                                      children: [
                                                        e == 'Edit'
                                                            ? const Icon(Icons
                                                                .edit_outlined)
                                                            : const Icon(Icons
                                                                .delete_outline),
                                                        Spacing()
                                                            .horizontalSpace(
                                                                context, 0.02),
                                                        Text(
                                                          e,
                                                          style: txtStyle(
                                                              size: 13,
                                                              weight: FontWeight
                                                                  .w400),
                                                        ),
                                                      ],
                                                    ),
                                                  ))
                                            ];
                                          },
                                        ),
                                      )),
                                ]),
                              ),
                            ),
                            Container(
                              width: Sizes().ratioWithScrWidth(context, 2.84),
                              height:
                                  Sizes().ratioWithScrHeight(context, 0.002),
                              color: const Color.fromARGB(255, 199, 195, 195),
                            )
                          ],
                        ),
                      )
                      .toList(),
                  Spacing().verticalSpace(context, 0.03),
                  Row(
                    children: [
                      Spacing().horizontalSpace(context, 0.4),
                      Text(
                        'Showing 1 to ${goalTrackList.length} of ${goalTrackList.length} entries',
                        style: listStyle,
                      ),
                    ],
                  ),
                  Spacing().verticalSpace(context, 0.01),
                  Row(
                    children: [
                      Spacing().horizontalSpace(context, 0.6),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 187, 184, 184)),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  bottomLeft: Radius.circular(6))),
                          child: Padding(
                            padding: EdgeInsets.all(
                                Sizes().ratioWithScrWidth(context, 0.02)),
                            child: Text(
                              'Previous',
                              style: txtStyle(weight: FontWeight.w300),
                            ),
                          )),
                      Container(
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              border: Border(
                                top: BorderSide(
                                    color: Color.fromARGB(255, 187, 184, 184)),
                                bottom: BorderSide(
                                    color: Color.fromARGB(255, 187, 184, 184)),
                              )),
                          child: Padding(
                            padding: EdgeInsets.all(
                                Sizes().ratioWithScrWidth(context, 0.02)),
                            child: Text(
                              '1',
                              style: txtStyle(color: Colors.white),
                            ),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 187, 184, 184),
                              ),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(6),
                                  bottomRight: Radius.circular(6))),
                          child: Padding(
                            padding: EdgeInsets.all(
                                Sizes().ratioWithScrWidth(context, 0.02)),
                            child: Text(
                              'Next',
                              style: txtStyle(weight: FontWeight.w300),
                            ),
                          )),
                    ],
                  )
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
          child: SizedBox(
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
                      color: const Color.fromARGB(255, 139, 138, 138),
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
                    color: const Color.fromARGB(255, 51, 50, 50), width: 0.5),
                borderRadius: BorderRadius.circular(20)),
            alignment: Alignment.center,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              circleInd(context, color),
              Spacing().horizontalSpace(context, 0.018),
              child,
              const Icon(Icons.arrow_drop_down)
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

  Widget labelBar(
          {required BuildContext context,
          required double width,
          required Color color,
          required List<double> borderRad}) =>
      Container(
        width: Sizes().ratioWithScrWidth(context, width),
        height: Sizes().ratioWithScrHeight(context, 0.006),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderRad[0]),
                bottomLeft: Radius.circular(borderRad[1]),
                topRight: Radius.circular(borderRad[2]),
                bottomRight: Radius.circular(borderRad[3]))),
      );
}
