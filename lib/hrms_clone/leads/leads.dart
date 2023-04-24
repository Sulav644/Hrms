import 'package:flutter/material.dart';
import 'package:hrms_clone/hrms_clone/holidays/components/horiz_list_tile.dart';
import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../view_more_projects/components/entries_limit_widget.dart';
import 'data/leads_detail.dart';

const path = 'assets/images/member_list';

List<LeadsDetail> leadsList = [
  const LeadsDetail(
      image: '$path/download.jpg',
      name: 'Wilmer Deluna',
      email: 'wilmerdeluna@example.com',
      project: 'Hospital Administration',
      status: 'Working',
      createdDate: '10 hours ago'),
  const LeadsDetail(
      image: '$path/downloadTwo.jpg',
      name: 'Lesley Grauer',
      email: 'lesleygrauer@example.com',
      project: 'Video Calling App',
      status: 'Working',
      createdDate: '5 Mar 2019'),
  const LeadsDetail(
      image: '$path/downloadThree.jpg',
      name: 'Jeffery Lalor',
      email: 'jefferylalor@example.com',
      project: 'Office Management',
      status: 'Working',
      createdDate: '27 Feb 2019'),
  const LeadsDetail(
      image: '$path/download.jpg',
      name: 'Wilmer Warren',
      email: 'wilmerdeluna@example.com',
      project: 'Hospital Administration',
      status: 'Working',
      createdDate: '10 hours ago'),
  const LeadsDetail(
      image: '$path/downloadTwo.jpg',
      name: 'Lesley Smith',
      email: 'lesleygrauer@example.com',
      project: 'Video Calling App',
      status: 'Working',
      createdDate: '5 Mar 2019'),
  const LeadsDetail(
      image: '$path/downloadThree.jpg',
      name: 'Jeffery Warren',
      email: 'jefferylalor@example.com',
      project: 'Office Management',
      status: 'Working',
      createdDate: '27 Feb 2019'),
  const LeadsDetail(
      image: '$path/download.jpg',
      name: 'Wilmer Watson',
      email: 'wilmerdeluna@example.com',
      project: 'Hospital Administration',
      status: 'Working',
      createdDate: '10 hours ago'),
  const LeadsDetail(
      image: '$path/downloadTwo.jpg',
      name: 'Lesley Watson',
      email: 'lesleygrauer@example.com',
      project: 'Video Calling App',
      status: 'Working',
      createdDate: '5 Mar 2019'),
  const LeadsDetail(
      image: '$path/downloadThree.jpg',
      name: 'Jeffery Smith',
      email: 'jefferylalor@example.com',
      project: 'Office Management',
      status: 'Working',
      createdDate: '27 Feb 2019'),
];

class Leads extends StatefulWidget {
  const Leads({super.key});

  @override
  State<Leads> createState() => _LeadsState();
}

class _LeadsState extends State<Leads> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    const path = 'assets/images/member_list';
    final headerStyle = txtStyle(weight: FontWeight.w600, height: 1.4);
    final listStyle = txtStyle(weight: FontWeight.w400, height: 1.4);
    return AppWidgets().appScaffold(
        context: context,
        showMenuStatus: showMenuStatus,
        controller: scrollController,
        onClick: () {},
        children: [
          Spacing().verticalSpace(context, 0.02),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Text(
                'Leads',
                style: txtStyle(size: 20, weight: FontWeight.w600),
              )
            ]),
            Spacing().verticalSpace(context, 0.035),
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
                                width: 0.34,
                                child: Text('Lead Name', style: headerStyle)),
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
                                width: 0.46,
                                child: Text('Email', style: headerStyle)),
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
                                child: Text('Phone', style: headerStyle)),
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
                                width: 0.36,
                                child: Text('Project', style: headerStyle)),
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
                                width: 0.36,
                                child:
                                    Text('Assigned Staff', style: headerStyle)),
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
                                width: 0.18,
                                child: Text('Created', style: headerStyle)),
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
                  ...leadsList
                      .map(
                        (e) => Column(
                          children: [
                            Container(
                              height: Sizes().ratioWithScrHeight(context, 0.09),
                              color: leadsList.indexOf(e).isEven
                                  ? Colors.transparent
                                  : Colors.white,
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: Sizes()
                                        .ratioWithScrWidth(context, 0.044)),
                                child: Row(children: [
                                  HorizListTile(
                                      width: 0.17,
                                      child: Text('${leadsList.indexOf(e) + 1}',
                                          style: listStyle)),
                                  HorizListTile(
                                      width: 0.45,
                                      child: Row(children: [
                                        CircleAvatar(
                                          backgroundImage:
                                              AssetImage('${e.image}'),
                                          radius: 18,
                                        ),
                                        Spacing()
                                            .horizontalSpace(context, 0.03),
                                        Text('${e.name}', style: listStyle)
                                      ])),
                                  HorizListTile(
                                      width: 0.57,
                                      child:
                                          Text('${e.email}', style: listStyle)),
                                  HorizListTile(
                                      width: 0.29,
                                      child:
                                          Text('9876543210', style: listStyle)),
                                  HorizListTile(
                                      width: 0.47,
                                      child: Text('${e.project}',
                                          style: listStyle)),
                                  HorizListTile(
                                      width: 0.47,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            ...[
                                              '$path/downloadTwo.jpg',
                                              '$path/downloadThree.jpg',
                                            ]
                                                .map((e) => Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              3.0),
                                                      child: CircleAvatar(
                                                        backgroundImage:
                                                            AssetImage(
                                                          e,
                                                        ),
                                                        radius: 16,
                                                      ),
                                                    ))
                                                .toList(),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
                                              child: CircleAvatar(
                                                backgroundColor: Colors.pink,
                                                radius: 16,
                                                child: Text(
                                                  '+15',
                                                  style: txtStyle(
                                                      color: Colors.white,
                                                      size: 12,
                                                      weight: FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ])),
                                  HorizListTile(
                                      width: 0.29,
                                      child: Text('Working', style: listStyle)),
                                  HorizListTile(
                                      width: 0.29,
                                      child: Text('${e.createdDate}',
                                          style: listStyle)),
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
                              width: Sizes().ratioWithScrWidth(context, 3.26),
                              height:
                                  Sizes().ratioWithScrHeight(context, 0.002),
                              color: const Color.fromARGB(255, 199, 195, 195),
                            )
                          ],
                        ),
                      )
                      .toList()
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
}
