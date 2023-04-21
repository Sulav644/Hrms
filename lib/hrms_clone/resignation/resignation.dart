import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import '../view_more_projects/components/entries_limit_widget.dart';

class Resignation extends StatefulWidget {
  Resignation({super.key});

  @override
  State<Resignation> createState() => _ResignationState();
}

class _ResignationState extends State<Resignation> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();
  TextEditingController resignController = TextEditingController();
  TextEditingController noticeController = TextEditingController();
  TextEditingController resignDateController = TextEditingController();
  TextEditingController reasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                'Resignation',
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
                                    'Add Resignation',
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
                                          'Resigning Employee',
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
                                    TextField(
                                        controller: resignController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                        )),
                                    Spacing().verticalSpace(context, 0.02),
                                    Row(
                                      children: [
                                        Text(
                                          'Notice Date',
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
                                          setState(() {
                                            resignDateController.text =
                                                DateFormat('yyyy-MM-dd')
                                                    .format(newDate!);
                                          });
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
                                          'Resignation Date',
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
                                          setState(() {
                                            resignDateController.text =
                                                DateFormat('yyyy-MM-dd')
                                                    .format(newDate!);
                                          });
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
                                          'Reason',
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
                                    TextField(
                                        controller: resignController,
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
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)))),
                                          onPressed: () {
                                            Navigator.pop(context);

                                            setState(() {});
                                          },
                                          child: Text('Submit')),
                                    )
                                  ]),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: addButton(
                      context: context,
                      title: 'Add Resignation',
                      borderRad: 20))
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
                    HorizListTile(
                        width: 0.34, child: Text('Resigning Employee')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.25, child: Text('Department')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.24, child: Text('Reason')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.24, child: Text('Notice Date')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.2, child: Text('Promotion Date')),
                    HorizListTile(
                      width: 0.11,
                      child: iconWrap(
                          context,
                          () {},
                          [Icons.arrow_upward, Icons.arrow_downward],
                          Alignment.bottomCenter,
                          Color.fromARGB(255, 139, 138, 138)),
                    ),
                    HorizListTile(width: 0.16, child: Text('Actions')),
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
                          Text('John Doe')
                        ])),
                    HorizListTile(width: 0.36, child: Text('Web Development')),
                    HorizListTile(
                        width: 0.35, child: Text('Lorem ipsum dollar')),
                    HorizListTile(width: 0.35, child: Text('28 Feb 2019')),
                    HorizListTile(width: 0.29, child: Text('28 Feb 2019')),
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
