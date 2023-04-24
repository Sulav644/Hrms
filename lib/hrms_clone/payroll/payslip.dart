import 'package:flutter/material.dart';
import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../project_detail_&_member/core/components.dart';

class PaySlip extends StatefulWidget {
  const PaySlip({super.key});

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
            Spacing().verticalSpace(context, 0.02),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Payslip',
                style: txtStyle(size: 18, weight: FontWeight.w600),
              ),
              Row(children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 80, 78, 78)),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(6),
                            bottomLeft: Radius.circular(6))),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Text('CSV'),
                    )),
                Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          top: BorderSide(
                              color: Color.fromARGB(255, 80, 78, 78)),
                          bottom: BorderSide(
                              color: Color.fromARGB(255, 80, 78, 78))),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Text('PDF'),
                    )),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 80, 78, 78)),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6))),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: [
                          const Icon(Icons.print_outlined),
                          Spacing().horizontalSpace(context, 0.01),
                          const Text('Print'),
                        ],
                      ),
                    )),
              ]),
            ]),
            Spacing().verticalSpace(context, 0.04),
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
                        underLine: TextDecoration.underline,
                        weight: FontWeight.w600),
                  ),
                  Spacing().verticalSpace(context, 0.02),
                  Image.asset('assets/images/company_logo.png'),
                  Spacing().verticalSpace(context, 0.03),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dreamguy's Technologies",
                          style: txtStyle(weight: FontWeight.w400),
                        ),
                        Spacing().verticalSpace(context, 0.013),
                        Text(
                          '3864 Quiet Valley Lane,',
                          style: txtStyle(weight: FontWeight.w400),
                        ),
                        Spacing().verticalSpace(context, 0.013),
                        Text(
                          'Sherman Oaks, CA, 91403',
                          style: txtStyle(weight: FontWeight.w400),
                        ),
                      ]),
                  Spacing().verticalSpace(context, 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PAYSLIP #49029",
                              style:
                                  txtStyle(size: 22.5, weight: FontWeight.w600),
                            ),
                            Spacing().verticalSpace(context, 0.01),
                            Text(
                              'Salary Month: March, 2019',
                              style: txtStyle(weight: FontWeight.w400),
                            ),
                          ]),
                    ],
                  ),
                  Spacing().verticalSpace(context, 0.04),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John Doe",
                          style: txtStyle(weight: FontWeight.w600),
                        ),
                        Spacing().verticalSpace(context, 0.01),
                        Text(
                          'Web Designer',
                          style: txtStyle(weight: FontWeight.w400),
                        ),
                        Spacing().verticalSpace(context, 0.01),
                        Text(
                          'Employee ID: FT-009',
                          style: txtStyle(weight: FontWeight.w400),
                        ),
                        Spacing().verticalSpace(context, 0.01),
                        Text(
                          'Joining Date: 1 Jan 2013',
                          style: txtStyle(weight: FontWeight.w400),
                        ),
                        Spacing().verticalSpace(context, 0.05),
                        Text(
                          'Earnings',
                          style: txtStyle(size: 18, weight: FontWeight.w600),
                        ),
                        Spacing().verticalSpace(context, 0.02),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 194, 190, 190)),
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
                        Spacing().verticalSpace(context, 0.02),
                        Text(
                          'Deductions',
                          style: txtStyle(size: 18, weight: FontWeight.w600),
                        ),
                        Spacing().verticalSpace(context, 0.02),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 173, 169, 169)),
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
                        Spacing().verticalSpace(context, 0.02),
                        Wrap(
                          children: [
                            Text(
                              'Net Salary: \$59698 ',
                              style: txtStyle(
                                  weight: FontWeight.w600, height: 1.6),
                            ),
                            ...'(Fifty nine thousand six hundred and ninety eight only)'
                                .split(" ")
                                .map(
                                  (e) => Text(
                                    '$e ',
                                    style: txtStyle(
                                        weight: FontWeight.w400, height: 1.6),
                                  ),
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
                vertical: Sizes().ratioWithScrHeight(context, 0.02),
                horizontal: Sizes().ratioWithScrWidth(context, 0.03)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    field,
                    style: txtStyle(weight: FontWeight.w600),
                  ),
                  Text(
                    '\$$price',
                    style: txtStyle(
                        weight: field.contains('Total')
                            ? FontWeight.w600
                            : FontWeight.w400),
                  )
                ]),
          ),
          Container(
            width: Sizes().scrWidth(context),
            height: 1,
            color: const Color.fromARGB(255, 192, 187, 187),
          )
        ],
      );
}
