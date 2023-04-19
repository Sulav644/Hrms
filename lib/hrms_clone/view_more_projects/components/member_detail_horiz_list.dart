import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/hrms_clone/view_more_projects/components/entries_limit_widget.dart';
import 'package:hrms_clone/hrms_clone/view_more_projects/domain/member_sortlist_cubit.dart';
import 'package:intl/intl.dart';

import '../../../core/utils.dart';

class MemberDetailHorizList extends StatefulWidget {
  MemberDetailHorizList({super.key});

  @override
  State<MemberDetailHorizList> createState() => _MemberDetailHorizListState();
}

class _MemberDetailHorizListState extends State<MemberDetailHorizList> {
  final priorityKey = GlobalKey();

  final statusKey = GlobalKey();

  int index = 100;

  bool clickedPriority = false;

  bool clickedStatus = false;

  @override
  Widget build(BuildContext context) {
    final center = Alignment.center;
    final bottom = Alignment.bottomCenter;
    final path = 'assets/images/member_list';
    final membersSorts = context.watch<MembersSortListCubit>().state;
    NumberFormat formatter = new NumberFormat("0000");

    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      EntriesLimitWidget(),
      Spacing().verticalSpace(context, 0.03),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: Sizes().ratioWithScrHeight(context, 0.097),
            alignment: Alignment.topCenter,
            color: Color.fromARGB(255, 209, 206, 206),
            child: Padding(
              padding: EdgeInsets.only(
                  top: Sizes().ratioWithScrHeight(context, 0.002)),
              child: Container(
                height: Sizes().ratioWithScrHeight(context, 0.09),
                color: Colors.white,
                child: Row(children: [
                  Spacing().horizontalSpace(context, 0.04),
                  Container(
                    width: Sizes().ratioWithScrWidth(context, 0.3),
                    child: Row(children: [
                      textWrap(context, 'Project'),
                      iconWrap(
                          context,
                          () => context
                              .read<MembersSortListCubit>()
                              .sortToAlphabet(),
                          [Icons.arrow_upward, Icons.arrow_downward],
                          bottom,
                          membersSorts[0].id != 1
                              ? Colors.black
                              : Color.fromARGB(255, 139, 138, 138)),
                    ]),
                  ),
                  Container(
                    width: Sizes().ratioWithScrWidth(context, 0.28),
                    alignment: Alignment.center,
                    child: Row(children: [
                      textWrap(context, 'Project Id'),
                      iconWrap(
                          context,
                          () => context.read<MembersSortListCubit>().sortToId(),
                          [Icons.arrow_upward, Icons.arrow_downward],
                          bottom,
                          membersSorts[0].id == 1
                              ? Colors.black
                              : Color.fromARGB(255, 139, 138, 138)),
                    ]),
                  ),
                  Container(
                    width: Sizes().ratioWithScrWidth(context, 0.28),
                    child: Row(children: [
                      textWrap(context, 'Leader'),
                      iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          bottom,
                          Color.fromARGB(255, 139, 138, 138)),
                    ]),
                  ),
                  Container(
                    width: Sizes().ratioWithScrWidth(context, 0.54),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          textWrap(context, 'Team'),
                          iconWrap(
                              context,
                              () {},
                              [Icons.arrow_upward, Icons.arrow_downward],
                              bottom,
                              Color.fromARGB(255, 139, 138, 138)),
                        ]),
                  ),
                  Container(
                    width: Sizes().ratioWithScrWidth(context, 0.32),
                    alignment: Alignment.center,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          textWrap(context, 'Deadline'),
                          iconWrap(
                              context,
                              () {},
                              [Icons.arrow_upward, Icons.arrow_downward],
                              bottom,
                              Color.fromARGB(255, 139, 138, 138)),
                        ]),
                  ),
                  Container(
                    width: Sizes().ratioWithScrWidth(context, 0.35),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          textWrap(context, 'Priority'),
                          iconWrap(
                              context,
                              () {},
                              [Icons.arrow_upward, Icons.arrow_downward],
                              bottom,
                              Color.fromARGB(255, 139, 138, 138)),
                        ]),
                  ),
                  Container(
                    width: Sizes().ratioWithScrWidth(context, 0.35),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          textWrap(context, 'Status'),
                          iconWrap(
                              context,
                              () {},
                              [Icons.arrow_upward, Icons.arrow_downward],
                              bottom,
                              Color.fromARGB(255, 139, 138, 138)),
                        ]),
                  ),
                  Container(
                    width: Sizes().ratioWithScrWidth(context, 0.28),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          textWrap(context, 'Action'),
                          iconWrap(
                              context,
                              () {},
                              [Icons.arrow_upward, Icons.arrow_downward],
                              bottom,
                              Color.fromARGB(255, 139, 138, 138))
                        ]),
                  ),
                ]),
              ),
            ),
          ),
          ...membersSorts
              .map(
                (e) => Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: Sizes().ratioWithScrHeight(context, 0.004)),
                      child: Container(
                        height: Sizes().ratioWithScrHeight(context, 0.09),
                        color: membersSorts.indexOf(e).isEven
                            ? Color.fromARGB(255, 240, 238, 238)
                            : Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacing().horizontalSpace(context, 0.04),
                            Container(
                                width: Sizes().ratioWithScrWidth(context, 0.3),
                                child: Text(
                                  e.title,
                                  style: txtStyle(
                                      color: Color.fromARGB(255, 10, 104, 182),
                                      weight: FontWeight.w400,
                                      height: 1.5),
                                )),
                            Container(
                                width: Sizes().ratioWithScrWidth(context, 0.28),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'PRO-${formatter.format(e.id)}',
                                  style: txtStyle(weight: FontWeight.w400),
                                )),
                            Container(
                              width: Sizes().ratioWithScrWidth(context, 0.28),
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  '${path}/download.jpg',
                                ),
                                radius: 16,
                              ),
                            ),
                            Container(
                              width: Sizes().ratioWithScrWidth(context, 0.54),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ...[
                                      '${path}/downloadTwo.jpg',
                                      '${path}/downloadThree.jpg',
                                      '${path}/downloadFour.jpg',
                                      '${path}/downloadFive.jpg'
                                    ]
                                        .map((e) => Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
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
                                  ]),
                            ),
                            Container(
                                width: Sizes().ratioWithScrWidth(context, 0.28),
                                alignment: Alignment.center,
                                child: Text(
                                  '17 Apr 2019',
                                  style: txtStyle(weight: FontWeight.w400),
                                )),
                            Container(
                              width: Sizes().ratioWithScrWidth(context, 0.4),
                              alignment: Alignment.center,
                              child: Stack(
                                children: [
                                  dropDownBox(
                                      context: context,
                                      key: priorityKey,
                                      onClick: () {
                                        setState(() {
                                          index = membersSorts.indexOf(e);
                                          clickedPriority = true;
                                        });
                                      },
                                      color: Colors.red,
                                      child: Text('High')),
                                  PopupMenuButton(
                                    child: Container(
                                      width: Sizes()
                                          .ratioWithScrWidth(context, 0.3),
                                      height: Sizes()
                                          .ratioWithScrHeight(context, 0.04),
                                      color: Colors.transparent,
                                    ),
                                    padding: EdgeInsets.zero,
                                    offset: Offset(
                                        Sizes()
                                            .ratioWithScrWidth(context, 0.01),
                                        Sizes().ratioWithScrHeight(
                                            context, 0.052)),
                                    itemBuilder: (context) {
                                      return [
                                        PopupMenuItem(
                                          child: Row(
                                            children: [
                                              circleInd(context, Colors.red),
                                              Spacing().horizontalSpace(
                                                  context, 0.02),
                                              Text(
                                                'High',
                                                style: txtStyle(
                                                    weight: FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          padding: EdgeInsets.only(
                                            top: Sizes().ratioWithScrWidth(
                                                context, 0.02),
                                            left: Sizes().ratioWithScrWidth(
                                                context, 0.03),
                                            bottom: Sizes().ratioWithScrWidth(
                                                context, 0.02),
                                          ),
                                          height: 0,
                                        ),
                                        PopupMenuItem(
                                          child: Row(
                                            children: [
                                              circleInd(context, Colors.orange),
                                              Spacing().horizontalSpace(
                                                  context, 0.02),
                                              Text(
                                                'Medium',
                                                style: txtStyle(
                                                    weight: FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          padding: EdgeInsets.only(
                                            top: Sizes().ratioWithScrWidth(
                                                context, 0.02),
                                            left: Sizes().ratioWithScrWidth(
                                                context, 0.03),
                                            bottom: Sizes().ratioWithScrWidth(
                                                context, 0.02),
                                          ),
                                          height: 0,
                                        ),
                                        PopupMenuItem(
                                          child: Row(
                                            children: [
                                              circleInd(context, Colors.green),
                                              Spacing().horizontalSpace(
                                                  context, 0.02),
                                              Text(
                                                'Low',
                                                style: txtStyle(
                                                    weight: FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          padding: EdgeInsets.only(
                                            top: Sizes().ratioWithScrWidth(
                                                context, 0.02),
                                            left: Sizes().ratioWithScrWidth(
                                                context, 0.03),
                                            bottom: Sizes().ratioWithScrWidth(
                                                context, 0.02),
                                          ),
                                          height: 0,
                                        ),
                                      ];
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: Sizes().ratioWithScrWidth(context, 0.3),
                              alignment: Alignment.center,
                              child: Stack(
                                children: [
                                  dropDownBox(
                                      context: context,
                                      key: priorityKey,
                                      onClick: () {},
                                      color: Colors.green,
                                      child: Text('Active')),
                                  PopupMenuButton(
                                    child: Container(
                                      width: Sizes()
                                          .ratioWithScrWidth(context, 0.3),
                                      height: Sizes()
                                          .ratioWithScrHeight(context, 0.04),
                                      color: Colors.transparent,
                                    ),
                                    padding: EdgeInsets.zero,
                                    offset: Offset(
                                        Sizes()
                                            .ratioWithScrWidth(context, 0.012),
                                        Sizes().ratioWithScrHeight(
                                            context, 0.052)),
                                    itemBuilder: (context) {
                                      return [
                                        PopupMenuItem(
                                          child: Row(
                                            children: [
                                              circleInd(context, Colors.green),
                                              Spacing().horizontalSpace(
                                                  context, 0.02),
                                              Text(
                                                'Active',
                                                style: txtStyle(
                                                    weight: FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          padding: EdgeInsets.only(
                                            top: Sizes().ratioWithScrWidth(
                                                context, 0.02),
                                            left: Sizes().ratioWithScrWidth(
                                                context, 0.03),
                                            bottom: Sizes().ratioWithScrWidth(
                                                context, 0.02),
                                          ),
                                          height: 0,
                                        ),
                                        PopupMenuItem(
                                          child: Row(
                                            children: [
                                              circleInd(context, Colors.red),
                                              Spacing().horizontalSpace(
                                                  context, 0.02),
                                              Text(
                                                'Inactive',
                                                style: txtStyle(
                                                    weight: FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          padding: EdgeInsets.only(
                                            top: Sizes().ratioWithScrWidth(
                                                context, 0.02),
                                            left: Sizes().ratioWithScrWidth(
                                                context, 0.03),
                                            bottom: Sizes().ratioWithScrWidth(
                                                context, 0.02),
                                          ),
                                          height: 0,
                                        ),
                                      ];
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: Sizes().ratioWithScrWidth(context, 0.32),
                              alignment: Alignment.centerRight,
                              child: PopupMenuButton(
                                padding: EdgeInsets.zero,
                                offset: Offset(1,
                                    Sizes().ratioWithScrHeight(context, 0.06)),
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
                                              Spacing().horizontalSpace(
                                                  context, 0.02),
                                              Text(
                                                e,
                                                style: txtStyle(
                                                    size: 13,
                                                    weight: FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          padding: EdgeInsets.only(
                                              top: Sizes().ratioWithScrWidth(
                                                  context, 0.02),
                                              left: Sizes().ratioWithScrWidth(
                                                  context, 0.05),
                                              bottom: Sizes().ratioWithScrWidth(
                                                  context, 0.02),
                                              right: Sizes().ratioWithScrWidth(
                                                  context, 0.1)),
                                          height: 0,
                                        ))
                                  ];
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: Sizes().ratioWithScrWidth(
                          context,
                          0.04 +
                              0.3 +
                              0.28 +
                              0.28 +
                              0.54 +
                              0.28 +
                              0.4 +
                              0.3 +
                              0.32),
                      height: Sizes().ratioWithScrHeight(context, 0.002),
                      color: Color.fromARGB(255, 209, 206, 206),
                    )
                  ],
                ),
              )
              .toList()
        ]),
      )
    ]);
  }

  Widget textWrap(BuildContext context, String title) => Container(
      width: Sizes().ratioWithScrWidth(context, 0.165),
      height: Sizes().ratioWithScrHeight(context, 0.07),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: txtStyle(weight: FontWeight.w500, height: 1.5),
      ));

  Widget iconWrap(BuildContext context, VoidCallback onClick,
          List<IconData> icon, Alignment alignment, Color? iconColor) =>
      Container(
          width: Sizes().ratioWithScrWidth(context, 0.11),
          height: Sizes().ratioWithScrHeight(context, 0.07),
          alignment: alignment,
          child: Container(
            height: 20,
            child: GestureDetector(
              onTap: () => onClick(),
              child: Stack(
                children: [
                  Positioned(
                    right: 18,
                    child: Icon(
                      icon[0],
                      color: iconColor,
                      size: 16,
                    ),
                  ),
                  Positioned(
                    left: 17,
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
          required Key key,
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

  Widget priorityOption(
          {required BuildContext context,
          required Color color,
          required String type}) =>
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Sizes().ratioWithScrWidth(context, 0.03),
            vertical: Sizes().ratioWithScrHeight(context, 0.01)),
        child: Row(children: [
          circleInd(context, color),
          Spacing().horizontalSpace(context, 0.02),
          Material(
            child: Text(
              type,
              style: txtStyle(size: 12, weight: FontWeight.w300),
            ),
          ),
        ]),
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
}
