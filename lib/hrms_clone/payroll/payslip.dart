import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import '../project_detail_&_member/core/components.dart';
import '../view_more_projects/components/entries_limit_widget.dart';

class PaySlip extends StatefulWidget {
  PaySlip({super.key});

  @override
  State<PaySlip> createState() => _PaySlipState();
}

class _PaySlipState extends State<PaySlip> {
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
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text('Payslip'),
              Row(children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            bottomLeft: Radius.circular(6))),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text('CSV'),
                    )),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          top: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text('PDF'),
                    )),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6))),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: [
                          Icon(Icons.print),
                          Text('Print'),
                        ],
                      ),
                    )),
              ]),
            ]),
            Components().detailCard(
                context: context,
                padWid: 0.07,
                padHeight: 0.04,
                alignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PAYSLIP FOR THE MONTH OF FEB 2019',
                    textAlign: TextAlign.center,
                    style: txtStyle(
                        size: 18,
                        height: 1.4,
                        underLine: TextDecoration.underline),
                  ),
                  Image.asset('assets/images/company_logo.png'),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dreamguy's Technologies"),
                        Text('3864 Quiet Valley Lane,'),
                        Text('Sherman Oaks, CA, 91403'),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PAYSLIP #49029",
                              style: txtStyle(size: 22.5),
                            ),
                            Text('Salary Month: March, 2019,'),
                          ]),
                    ],
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("John Doe"),
                        Text('Web Designer'),
                        Text('Employee ID: FT-009'),
                        Text('Joining Date: 1 Jan 2013'),
                        Spacing().verticalSpace(context, 0.05),
                        Text('Earnings'),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(2)),
                          child: Column(
                            children: [
                              tableItem(field: 'Basic Salary', price: 6500),
                              tableItem(
                                  field: 'House Rent Allowance (H.R.A)',
                                  price: 55),
                              tableItem(field: 'Conveyance', price: 65),
                              tableItem(field: 'Other Allowance', price: 65),
                              tableItem(field: 'Total Earnings', price: 55),
                            ],
                          ),
                        ),
                        Text('Deductions'),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(2)),
                          child: Column(
                            children: [
                              tableItem(
                                  field: 'Tax Deducted at Source (T.D.S)',
                                  price: 0),
                              tableItem(field: 'Provident Fund', price: 0),
                              tableItem(field: 'ESI', price: 0),
                              tableItem(field: 'Loan', price: 300),
                              tableItem(
                                  field: 'Total Deductions', price: 59698),
                            ],
                          ),
                        ),
                        Wrap(
                          children: [
                            Text(
                              'Net Salary: \$59698 ',
                              style: txtStyle(
                                  weight: FontWeight.w600, height: 1.2),
                            ),
                            ...'(Fifty nine thousand six hundred and ninety eight only)'
                                .split(" ")
                                .map(
                                  (e) => Text(e),
                                )
                                .toList()
                          ],
                        )
                      ]),
                ])
          ])
        ]);
  }

  Widget tableItem({required String field, required int price}) => Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Sizes().ratioWithScrHeight(context, 0.01),
                horizontal: Sizes().ratioWithScrWidth(context, 0.02)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(field), Text('\$${price}')]),
          ),
          Container(
            width: Sizes().scrWidth(context),
            height: 1,
            color: Colors.black,
          )
        ],
      );
}
