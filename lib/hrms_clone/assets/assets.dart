import 'package:flutter/material.dart';
import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import '../view_more_projects/components/entries_limit_widget.dart';

class Assets extends StatefulWidget {
  const Assets({super.key});

  @override
  State<Assets> createState() => _AssetsState();
}

class _AssetsState extends State<Assets> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();
  String? status;
  String? user;

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
                'Assets',
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
                                      'Add Assets',
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
                                            'Asset Name',
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
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Asset Id',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      TextField(
                                          enabled: false,
                                          controller: TextEditingController(
                                              text: '#AST-736415'),
                                          decoration: const InputDecoration(
                                            fillColor: Color.fromARGB(
                                                255, 155, 153, 153),
                                            filled: true,
                                            border: OutlineInputBorder(),
                                          )),
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Purchase Date',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      TextField(
                                          enabled: false,
                                          controller: TextEditingController(
                                              text: '21/04/2323'),
                                          decoration: const InputDecoration(
                                            fillColor: Color.fromARGB(
                                                255, 155, 153, 153),
                                            filled: true,
                                            border: OutlineInputBorder(),
                                          )),
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Purchase From',
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
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Manufacturer',
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
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Model',
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
                                      Spacing().verticalSpace(context, 0.02),
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
                                            value: status ?? 'Pending',
                                            items: [
                                              'Pending',
                                              'Approved',
                                              'Deployed',
                                              'Damaged'
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
                                      Row(
                                        children: [
                                          Text(
                                            'Supplier',
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
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Condition',
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
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Warrenty',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      const TextField(
                                          decoration: InputDecoration(
                                        hintText: 'In Months',
                                        border: OutlineInputBorder(),
                                      )),
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Value/Price',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(context, 0.015),
                                      const TextField(
                                          decoration: InputDecoration(
                                        hintText: '1800',
                                        border: OutlineInputBorder(),
                                      )),
                                      Spacing().verticalSpace(context, 0.02),
                                      Row(
                                        children: [
                                          Text(
                                            'Resignation Date',
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
                                            'Asset User',
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
                                            value: user ?? 'John Doe',
                                            items: [
                                              'John Doe',
                                              'Richard Miles',
                                            ]
                                                .map(
                                                  (e) => DropdownMenuItem(
                                                    value: e,
                                                    child: Text(
                                                      e,
                                                      style: txtStyle(
                                                          color: e == user
                                                              ? Colors.red
                                                              : Colors.black),
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                            onChanged: (value) {
                                              setState(() {
                                                user = value;
                                              });
                                            },
                                          ),
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
                                            child: const Text('Submit')),
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
            const TextField(
                decoration: InputDecoration(
              hintText: 'Employee Name',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(),
            )),
            Spacing().verticalSpace(context, 0.02),
            Row(
              children: [
                Container(
                  width: Sizes().ratioWithScrWidth(context, 0.94),
                  height: Sizes().ratioWithScrHeight(context, 0.075),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(2)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isExpanded: true,
                      value: user ?? '--Select--',
                      items: [
                        '--Select--',
                        'John Doe',
                        'Richard Miles',
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: txtStyle(
                                    color:
                                        e == user ? Colors.red : Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          user = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Spacing().verticalSpace(context, 0.02),
            GestureDetector(
              onTap: () async {
                DateTime? newDate = await showDatePicker(
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
                    hintText: 'From',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.calendar_month)),
              ),
            ),
            Spacing().verticalSpace(context, 0.02),
            GestureDetector(
              onTap: () async {
                DateTime? newDate = await showDatePicker(
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
                    hintText: 'To',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.calendar_month)),
              ),
            ),
            Spacing().verticalSpace(context, 0.02),
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
            const EntriesLimitWidget(),
            Spacing().verticalSpace(context, 0.035),
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
                                width: 0.12,
                                child: Text(
                                  'Asset User',
                                  style: txtStyle(
                                      weight: FontWeight.w500, height: 1.4),
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
                                width: 0.16,
                                child: Text(
                                  'Asset Name',
                                  style: txtStyle(
                                      weight: FontWeight.w500, height: 1.4),
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
                                  'Asset Id',
                                  style: txtStyle(
                                      weight: FontWeight.w500, height: 1.4),
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
                                width: 0.19,
                                child: Text(
                                  'Purchase Date',
                                  style: txtStyle(
                                      weight: FontWeight.w500, height: 1.4),
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
                                  'Warrenty',
                                  style: txtStyle(
                                      weight: FontWeight.w500, height: 1.4),
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
                                width: 0.2,
                                child: Text(
                                  'Amount',
                                  style: txtStyle(
                                      weight: FontWeight.w500, height: 1.4),
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
                                width: 0.2,
                                child: Text(
                                  'Status',
                                  style: txtStyle(
                                      weight: FontWeight.w500, height: 1.4),
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
                                width: 0.16,
                                child: Text(
                                  'Actions',
                                  style: txtStyle(
                                      weight: FontWeight.w500, height: 1.4),
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
                  Spacing().verticalSpace(context, 0.01),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Sizes().ratioWithScrWidth(context, 0.04)),
                    child: Row(children: [
                      HorizListTile(
                          width: 0.23,
                          child: Text(
                            'Mushe abdul- Hakim',
                            style: txtStyle(
                                size: 16, weight: FontWeight.w400, height: 1.4),
                          )),
                      HorizListTile(
                          width: 0.27,
                          child: Text(
                            'Macbook Book',
                            style: txtStyle(
                                size: 16, weight: FontWeight.w700, height: 1.4),
                          )),
                      HorizListTile(
                          width: 0.26,
                          child: Text(
                            '#AST- 031256',
                            style: txtStyle(
                                size: 16, weight: FontWeight.w400, height: 1.4),
                          )),
                      HorizListTile(
                          width: 0.29,
                          child: Text(
                            '2020-09-23',
                            style: txtStyle(
                                size: 16, weight: FontWeight.w400, height: 1.4),
                          )),
                      HorizListTile(
                          width: 0.35,
                          child: Text(
                            '12 Months',
                            style: txtStyle(
                                size: 16, weight: FontWeight.w400, height: 1.4),
                          )),
                      HorizListTile(
                          width: 0.31,
                          child: Text(
                            '\$1900',
                            style: txtStyle(
                                size: 16, weight: FontWeight.w400, height: 1.4),
                          )),
                      HorizListTile(
                          width: 0.29,
                          child: Stack(
                            children: [
                              dropDownBox(
                                  context: context,
                                  onClick: () {},
                                  color: Colors.red,
                                  child: const Text('Pending')),
                              PopupMenuButton(
                                padding: EdgeInsets.zero,
                                offset: Offset(
                                    Sizes().ratioWithScrWidth(context, 0.01),
                                    Sizes().ratioWithScrHeight(context, 0.052)),
                                itemBuilder: (context) {
                                  return [
                                    PopupMenuItem(
                                      padding: EdgeInsets.only(
                                        top: Sizes()
                                            .ratioWithScrWidth(context, 0.02),
                                        left: Sizes()
                                            .ratioWithScrWidth(context, 0.03),
                                        bottom: Sizes()
                                            .ratioWithScrWidth(context, 0.02),
                                      ),
                                      height: 0,
                                      child: Row(
                                        children: [
                                          circleInd(context, Colors.red),
                                          Spacing()
                                              .horizontalSpace(context, 0.02),
                                          Text(
                                            'Pending',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                    PopupMenuItem(
                                      padding: EdgeInsets.only(
                                        top: Sizes()
                                            .ratioWithScrWidth(context, 0.02),
                                        left: Sizes()
                                            .ratioWithScrWidth(context, 0.03),
                                        bottom: Sizes()
                                            .ratioWithScrWidth(context, 0.02),
                                      ),
                                      height: 0,
                                      child: Row(
                                        children: [
                                          circleInd(context, Colors.green),
                                          Spacing()
                                              .horizontalSpace(context, 0.02),
                                          Text(
                                            'Approved',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                    PopupMenuItem(
                                      padding: EdgeInsets.only(
                                        top: Sizes()
                                            .ratioWithScrWidth(context, 0.02),
                                        left: Sizes()
                                            .ratioWithScrWidth(context, 0.03),
                                        bottom: Sizes()
                                            .ratioWithScrWidth(context, 0.02),
                                      ),
                                      height: 0,
                                      child: Row(
                                        children: [
                                          circleInd(context, Colors.blue),
                                          Spacing()
                                              .horizontalSpace(context, 0.02),
                                          Text(
                                            'Returned',
                                            style: txtStyle(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ];
                                },
                                child: Container(
                                  width:
                                      Sizes().ratioWithScrWidth(context, 0.3),
                                  height:
                                      Sizes().ratioWithScrHeight(context, 0.04),
                                  color: Colors.transparent,
                                ),
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
                                        child: Row(
                                          children: [
                                            e == 'Edit'
                                                ? const Icon(
                                                    Icons.edit_outlined)
                                                : const Icon(
                                                    Icons.delete_outline),
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
                                      ))
                                ];
                              },
                            ),
                          )),
                    ]),
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
