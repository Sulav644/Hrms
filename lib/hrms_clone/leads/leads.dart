import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/holidays/components/horiz_list_tile.dart';

import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../view_more_projects/components/entries_limit_widget.dart';

class Leads extends StatelessWidget {
  Leads({super.key});
  bool showMenuStatus = false;
  ScrollController scrollController = ScrollController();

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
                    HorizListTile(width: 0.34, child: Text('Lead Name')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.46, child: Text('Email')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.18, child: Text('Phone')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.36, child: Text('Project')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.36, child: Text('Assigned Staff')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.18, child: Text('Status')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.18, child: Text('Created')),
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
                        width: 0.57, child: Text('wilmerdeluna@example.com')),
                    HorizListTile(width: 0.29, child: Text('9876543210')),
                    HorizListTile(
                        width: 0.47, child: Text('Hospital Administration')),
                    HorizListTile(
                        width: 0.47,
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
                    HorizListTile(width: 0.29, child: Text('Working')),
                    HorizListTile(width: 0.29, child: Text('10 hours ago')),
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
}
