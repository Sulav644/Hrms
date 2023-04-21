import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import '../view_more_projects/components/entries_limit_widget.dart';

class Users extends StatefulWidget {
  Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();

  String? companyValue;

  String? rollValue;

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
                'Users',
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
                                      'Add User',
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
                                            'First Name',
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
                                      )),
                                      Spacing().verticalSpace(context, 0.04),
                                      Row(
                                        children: [
                                          Text(
                                            'Last Name',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      TextField(
                                          decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      )),
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Username',
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
                                      )),
                                      Row(
                                        children: [
                                          Text(
                                            'Email',
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
                                      )),
                                      Spacing().verticalSpace(context, 0.04),
                                      Row(
                                        children: [
                                          Text(
                                            'Password',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      TextField(
                                          decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      )),
                                      Row(
                                        children: [
                                          Text(
                                            'Confirm Password',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      TextField(
                                          decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      )),
                                      Row(
                                        children: [
                                          Text(
                                            'Phone',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      TextField(
                                          decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      )),
                                      Row(
                                        children: [
                                          Text(
                                            'Address',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      TextField(
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
                      context: context, title: 'Add Asset', borderRad: 20))
            ]),
            Spacing().verticalSpace(context, 0.04),
            TextField(
                decoration: InputDecoration(
              hintText: 'Employee Name',
              border: OutlineInputBorder(),
            )),
            Row(
              children: [
                Container(
                  width: Sizes().ratioWithScrWidth(context, 0.94),
                  height: Sizes().ratioWithScrHeight(context, 0.075),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(2)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isExpanded: true,
                      value: companyValue,
                      items: [
                        'Select Company',
                        'Global Technologies',
                        'Delta Infotech',
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(
                                e,
                                style: txtStyle(
                                    color: e == companyValue
                                        ? Colors.red
                                        : Colors.black),
                              ),
                              value: e,
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          this.companyValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: Sizes().ratioWithScrWidth(context, 0.94),
                  height: Sizes().ratioWithScrHeight(context, 0.075),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(2)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isExpanded: true,
                      value: rollValue,
                      items: [
                        'Select Roll',
                        'Web Developer',
                        'Web Designer',
                        'Android Developer',
                        'Ios Developer'
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(
                                e,
                                style: txtStyle(
                                    color: e == rollValue
                                        ? Colors.red
                                        : Colors.black),
                              ),
                              value: e,
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          this.rollValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: Sizes().scrWidth(context),
              height: Sizes().ratioWithScrHeight(context, 0.07),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {},
                  child: Text(
                    'SEARCH',
                    style: txtStyle(size: 18, color: Colors.white),
                  )),
            ),
            Spacing().verticalSpace(context, 0.026),
            EntriesLimitWidget(),
            Spacing().verticalSpace(context, 0.03),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    HorizListTile(
                        width: 0.34,
                        child: Text(
                          'Full Name',
                          style: txtStyle(
                              size: 16, weight: FontWeight.w600, height: 1.4),
                        )),
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
                        width: 0.4,
                        child: Text(
                          'Email',
                          style: txtStyle(
                              size: 16, weight: FontWeight.w600, height: 1.4),
                        )),
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
                        width: 0.24,
                        child: Text('Phone',
                            style: txtStyle(
                                size: 16,
                                weight: FontWeight.w600,
                                height: 1.4))),
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
                        width: 0.18,
                        child: Text('Address',
                            style: txtStyle(
                                size: 16,
                                weight: FontWeight.w600,
                                height: 1.4))),
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
                        width: 0.2,
                        child: Text('Created Date',
                            style: txtStyle(
                                size: 16,
                                weight: FontWeight.w600,
                                height: 1.4))),
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
                        width: 0.16,
                        child: Text('Actions',
                            style: txtStyle(
                                size: 16,
                                weight: FontWeight.w600,
                                height: 1.4))),
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
                    HorizListTile(
                        width: 0.45,
                        child: Row(children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/images/member_list/download.jpg'),
                            radius: 18,
                          ),
                          Spacing().horizontalSpace(context, 0.03),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'BarryCudo',
                                style: txtStyle(
                                    size: 16,
                                    weight: FontWeight.w400,
                                    height: 1.4),
                              ),
                              Spacing().verticalSpace(context, 0.005),
                              Text(
                                'Barry',
                                style: txtStyle(
                                    size: 12,
                                    weight: FontWeight.w300,
                                    height: 1.4),
                              )
                            ],
                          )
                        ])),
                    HorizListTile(
                        width: 0.5,
                        child: Text(
                          'barrycuda@example.com',
                          style: txtStyle(
                              size: 15, weight: FontWeight.w400, height: 1.4),
                        )),
                    HorizListTile(
                        width: 0.36,
                        child: Text(
                          '9876543210',
                          style: txtStyle(
                              size: 15, weight: FontWeight.w400, height: 1.4),
                        )),
                    HorizListTile(
                        width: 0.29,
                        child: Text(
                          'Los Angeles, California',
                          style: txtStyle(
                              size: 16, weight: FontWeight.w400, height: 1.4),
                        )),
                    HorizListTile(
                        width: 0.31,
                        child: Text(
                          '2020-09-21 19:05:47',
                          style: txtStyle(
                              size: 16, weight: FontWeight.w400, height: 1.4),
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
