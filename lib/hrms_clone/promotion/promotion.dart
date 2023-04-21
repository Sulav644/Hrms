import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import '../view_more_projects/components/entries_limit_widget.dart';

class Promotion extends StatefulWidget {
  const Promotion({super.key});

  @override
  State<Promotion> createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();
  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  String? value;
  String? selectedItem;

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
                'Promotion',
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
                                    'Add Promotion',
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
                                          'Promotion For',
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
                                        controller: titleController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                        )),
                                    Spacing().verticalSpace(context, 0.02),
                                    Row(
                                      children: [
                                        Text(
                                          'Promotion From',
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
                                        controller: TextEditingController(
                                            text: 'Web Developer'),
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            fillColor: Color.fromARGB(
                                                255, 184, 180, 180),
                                            filled: true)),
                                    Spacing().verticalSpace(context, 0.02),
                                    Row(
                                      children: [
                                        Text(
                                          'Promotion To',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                        Text(
                                          ' *',
                                          style: txtStyle(color: Colors.red),
                                        )
                                      ],
                                    ),
                                    Container(
                                      width: Sizes().scrWidth(context),
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          isExpanded: true,
                                          value: value,
                                          items: [
                                            'Web Developer',
                                            'Web Designer',
                                            'SEO Analyst'
                                          ]
                                              .map(
                                                (e) => DropdownMenuItem(
                                                  child: Text(
                                                    e,
                                                    style: txtStyle(
                                                        color: e == value
                                                            ? Colors.red
                                                            : Colors.black),
                                                  ),
                                                  value: e,
                                                ),
                                              )
                                              .toList(),
                                          onChanged: (value) {
                                            setState(() {
                                              this.value = value;
                                              selectedItem = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Spacing().verticalSpace(context, 0.015),
                                    Spacing().verticalSpace(context, 0.03),
                                    Row(
                                      children: [
                                        Text(
                                          'Promotion Date',
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
                                            dateController.text =
                                                DateFormat('yyyy-MM-dd')
                                                    .format(newDate!);
                                          });
                                        }
                                      },
                                      child: TextField(
                                        enabled: false,
                                        controller: dateController,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            suffixIcon:
                                                Icon(Icons.calendar_month)),
                                      ),
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

                                            setState(() {
                                              titleController.text = '';
                                              dateController.text = '';
                                            });
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
                      context: context, title: 'Add Promotion', borderRad: 20))
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
                        width: 0.34, child: Text('Promoted Employee')),
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
                    HorizListTile(
                        width: 0.24, child: Text('Promotion Designation From')),
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
                        width: 0.24, child: Text('Promotion Designation To')),
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
                    HorizListTile(width: 0.35, child: Text('Web Developer')),
                    HorizListTile(width: 0.35, child: Text('Sr Web Developer')),
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
