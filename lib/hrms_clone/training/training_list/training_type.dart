import 'package:flutter/material.dart';
import '../../../core/app_widgets.dart';
import '../../../core/utils.dart';
import '../../holidays/components/horiz_list_tile.dart';
import '../../view_more_projects/components/entries_limit_widget.dart';
import '../data/training_detail.dart';

const path = 'assets/images/member_list';

List<TrainingDetail> trainingList = [
  const TrainingDetail(type: 'Node', isActive: false),
  const TrainingDetail(type: 'Git', isActive: true),
  const TrainingDetail(type: 'Swift', isActive: false),
  const TrainingDetail(type: 'Html', isActive: false),
  const TrainingDetail(type: 'Laravel', isActive: false),
];

class TrainingType extends StatefulWidget {
  const TrainingType({super.key});

  @override
  State<TrainingType> createState() => _TrainingTypeState();
}

class _TrainingTypeState extends State<TrainingType> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();

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
                'Training Type',
                style: txtStyle(size: 18, weight: FontWeight.w600),
              ),
              GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add New',
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
                                          'Type',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                        Text(
                                          ' *',
                                          style: txtStyle(color: Colors.red),
                                        )
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
                                          'Description',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
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
                                          style:
                                              txtStyle(weight: FontWeight.w400),
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
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton(
                                              isExpanded: true,
                                              value: statusValue ?? 'Active',
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
                                                            color: e ==
                                                                    statusValue
                                                                ? Colors.red
                                                                : Colors.black),
                                                      ),
                                                    ),
                                                  )
                                                  .toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  statusValue = value;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)))),
                                          onPressed: () {
                                            Navigator.pop(context);

                                            setState(() {});
                                          },
                                          child: const Text('Submit')),
                                    )
                                  ]),
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
                                width: 0.14,
                                child: Text(
                                  'Type',
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
                                width: 0.24,
                                child: Text(
                                  'Description',
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
                                width: 0.26,
                                child: Text(
                                  'Status',
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
                                width: 0.17,
                                child: Text(
                                  'Actions',
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
                            )
                          ]),
                        ),
                      ),
                    ),
                  ),
                  ...trainingList
                      .map(
                        (e) => Column(
                          children: [
                            Container(
                              height: Sizes().ratioWithScrHeight(context, 0.09),
                              color: trainingList.indexOf(e).isEven
                                  ? Colors.transparent
                                  : Colors.white,
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: Sizes()
                                        .ratioWithScrWidth(context, 0.04)),
                                child: Row(children: [
                                  HorizListTile(
                                      width: 0.18,
                                      child: Text(
                                        '${trainingList.indexOf(e) + 1}',
                                        style: listStyle,
                                      )),
                                  HorizListTile(
                                      width: 0.245,
                                      child: Text('${e.type}\nTraining',
                                          style: listStyle)),
                                  HorizListTile(
                                      width: 0.35,
                                      child: Text('Lorem ipsum\ndollar',
                                          style: listStyle)),
                                  HorizListTile(
                                      width: 0.3,
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
                                      width: 0.32,
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
                              width: Sizes().ratioWithScrWidth(context, 1.45),
                              height:
                                  Sizes().ratioWithScrHeight(context, 0.004),
                              color: const Color.fromARGB(255, 209, 206, 206),
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
                        'Showing 1 to ${trainingList.length} of ${trainingList.length} entries',
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
}
