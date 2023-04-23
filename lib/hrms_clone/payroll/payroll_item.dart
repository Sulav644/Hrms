import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import '../project_detail_&_member/core/components.dart';
import '../view_more_projects/components/entries_limit_widget.dart';

class PayRollItem extends StatefulWidget {
  PayRollItem({super.key});

  @override
  State<PayRollItem> createState() => _PayRollItemState();
}

class _PayRollItemState extends State<PayRollItem> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();

  String? status;

  @override
  Widget build(BuildContext context) {
    return AppWidgets().appScaffold(
        context: context,
        showMenuStatus: showMenuStatus,
        controller: scrollController,
        onClick: () {},
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Payroll Items'),
          ]),
          Components().detailCard(
              context: context,
              padWid: 0.07,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  optionItem(title: 'Additions'),
                  optionItem(title: 'Overtime')
                ]),
                Row(children: [
                  optionItem(title: 'Deductions'),
                ]),
              ]),
          Components().detailCard(
              context: context,
              padWid: 0.05,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        HorizListTile(width: 0.3, child: Text('Name')),
                        HorizListTile(
                            width: 0.3, child: Text('Default/Unit\nAmount')),
                        HorizListTile(width: 0.2, child: Text('Action')),
                      ],
                    ),
                    Row(
                      children: [
                        HorizListTile(width: 0.3, child: Text('Absent amount')),
                        HorizListTile(width: 0.3, child: Text('\$12')),
                      ],
                    ),
                  ],
                )
              ])
        ]);
  }

  Widget optionItem({required String title}) => Stack(
        children: [
          Container(
              color: Color.fromARGB(255, 153, 150, 150),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Sizes().ratioWithScrHeight(context, 0.015),
                    horizontal: Sizes().ratioWithScrWidth(context, 0.06)),
                child: Text(title),
              )),
          Transform(
            transform: Matrix4.skewY(40 / 180 * pi),
            child: Container(
              width: 4,
              height: Sizes().ratioWithScrHeight(context, 0.03),
              color: Colors.orange,
            ),
          ),
          Positioned(
            top: Sizes().ratioWithScrHeight(context, 0.02),
            child: Transform(
              transform: Matrix4.skewY(-40 / 180 * pi),
              child: Container(
                width: 4,
                height: Sizes().ratioWithScrHeight(context, 0.03),
                color: Colors.orange,
              ),
            ),
          )
        ],
      );
}
