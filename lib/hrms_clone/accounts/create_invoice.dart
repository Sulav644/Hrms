import 'package:flutter/material.dart';
import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import '../view_more_projects/components/entries_limit_widget.dart';

class CreateInvoice extends StatefulWidget {
  const CreateInvoice({super.key});

  @override
  State<CreateInvoice> createState() => _CreateInvoiceState();
}

class _CreateInvoiceState extends State<CreateInvoice> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();
  String? client;
  String? project;
  String? tax;

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
                'Create Invoice',
                style: txtStyle(size: 18, weight: FontWeight.w600),
              ),
            ]),
            Spacing().verticalSpace(context, 0.02),
            Row(
              children: [
                Text(
                  'Client',
                  style: txtStyle(weight: FontWeight.w400),
                ),
              ],
            ),
            Spacing().verticalSpace(context, 0.015),
            Container(
              height: Sizes().ratioWithScrHeight(context, 0.075),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(2)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  value: client ?? 'Barry Cuda',
                  items: ['Please Select', 'Barry Cuda', 'Tressa Wexler']
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            e,
                            style: txtStyle(
                                color: e == client ? Colors.red : Colors.black),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      client = value;
                    });
                  },
                ),
              ),
            ),
            Spacing().verticalSpace(context, 0.02),
            Row(
              children: [
                Text(
                  'Project',
                  style: txtStyle(weight: FontWeight.w400),
                ),
              ],
            ),
            Spacing().verticalSpace(context, 0.015),
            Container(
              height: Sizes().ratioWithScrHeight(context, 0.075),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(2)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  value: project ?? 'Office Management',
                  items: [
                    'Select Project',
                    'Office Management',
                    'Project Management'
                  ]
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            e,
                            style: txtStyle(
                                color:
                                    e == project ? Colors.red : Colors.black),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      project = value;
                    });
                  },
                ),
              ),
            ),
            Spacing().verticalSpace(context, 0.02),
            Row(
              children: [
                Text(
                  'Email',
                  style: txtStyle(weight: FontWeight.w400),
                ),
              ],
            ),
            Spacing().verticalSpace(context, 0.015),
            const TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
            )),
            Row(
              children: [
                Text(
                  'Tax',
                  style: txtStyle(weight: FontWeight.w400),
                ),
              ],
            ),
            Spacing().verticalSpace(context, 0.015),
            Container(
              height: Sizes().ratioWithScrHeight(context, 0.075),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(2)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  value: tax ?? 'Select Tax',
                  items: ['Select Tax', 'VAT', 'GST', 'No Tax']
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            e,
                            style: txtStyle(
                                color: e == tax ? Colors.red : Colors.black),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      tax = value;
                    });
                  },
                ),
              ),
            ),
            Spacing().verticalSpace(context, 0.02),
            Row(
              children: [
                Text(
                  'Client Address',
                  style: txtStyle(weight: FontWeight.w400),
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
                  'Billing Address',
                  style: txtStyle(weight: FontWeight.w400),
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
                  'Invoice date',
                  style: txtStyle(weight: FontWeight.w400),
                ),
                Text(
                  '*',
                  style: txtStyle(color: Colors.red, weight: FontWeight.w400),
                ),
              ],
            ),
            Spacing().verticalSpace(context, 0.015),
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
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.calendar_month)),
              ),
            ),
            Row(
              children: [
                Text(
                  'Due Date',
                  style: txtStyle(weight: FontWeight.w400),
                ),
                Text(
                  '*',
                  style: txtStyle(color: Colors.red, weight: FontWeight.w400),
                ),
              ],
            ),
            Spacing().verticalSpace(context, 0.015),
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
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.calendar_month)),
              ),
            ),
            Container(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      HorizListTile(width: 0.1, child: Text('#')),
                      HorizListTile(width: 0.45, child: Text('Item')),
                      HorizListTile(width: 0.45, child: Text('Description')),
                      HorizListTile(width: 0.3, child: Text('Unit Cost')),
                      HorizListTile(width: 0.3, child: Text('Qty')),
                      HorizListTile(width: 0.3, child: Text('Amount')),
                    ]),
                    ...List.generate(
                        2,
                        (index) => Row(children: [
                              HorizListTile(
                                  width: 0.1, child: Text('${index + 1}')),
                              HorizListTile(
                                  width: 0.45,
                                  child: SizedBox(
                                    width:
                                        Sizes().ratioWithScrWidth(context, 0.4),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                  )),
                              HorizListTile(
                                  width: 0.45,
                                  child: SizedBox(
                                    width:
                                        Sizes().ratioWithScrWidth(context, 0.4),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                  )),
                              HorizListTile(
                                  width: 0.3,
                                  child: SizedBox(
                                    width: Sizes()
                                        .ratioWithScrWidth(context, 0.25),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                  )),
                              HorizListTile(
                                  width: 0.3,
                                  child: SizedBox(
                                    width: Sizes()
                                        .ratioWithScrWidth(context, 0.25),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                  )),
                              HorizListTile(
                                  width: 0.45,
                                  child: SizedBox(
                                    width:
                                        Sizes().ratioWithScrWidth(context, 0.4),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                  )),
                              index == 0
                                  ? Icon(
                                      Icons.add,
                                      color: Colors.green,
                                    )
                                  : Icon(
                                      Icons.delete_outline,
                                      color: Colors.red,
                                    ),
                            ])).toList(),
                  ]),
            )),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  width: Sizes().ratioWithScrWidth(context, 0.4),
                  alignment: Alignment.centerRight,
                  child: Text('Total')),
              Container(
                width: Sizes().ratioWithScrWidth(context, 0.46),
                alignment: Alignment.centerRight,
                child: Text('0'),
              )
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  width: Sizes().ratioWithScrWidth(context, 0.4),
                  alignment: Alignment.centerRight,
                  child: Text('Tax')),
              Container(
                width: Sizes().ratioWithScrWidth(context, 0.46),
                alignment: Alignment.centerRight,
                child: Container(
                  width: Sizes().ratioWithScrWidth(context, 0.4),
                  height: Sizes().ratioWithScrHeight(context, 0.05),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 145, 142, 142),
                      borderRadius: BorderRadius.circular(8)),
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text('0'),
                  ),
                ),
              )
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  width: Sizes().ratioWithScrWidth(context, 0.4),
                  alignment: Alignment.centerRight,
                  child: Text('Discount %')),
              Container(
                width: Sizes().ratioWithScrWidth(context, 0.46),
                alignment: Alignment.centerRight,
                child: Container(
                  width: Sizes().ratioWithScrWidth(context, 0.4),
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              )
            ]),
            Row(children: [
              Container(
                  width: Sizes().ratioWithScrWidth(context, 0.4),
                  alignment: Alignment.centerRight,
                  child: Text('Grand Total')),
              Container(
                  width: Sizes().ratioWithScrWidth(context, 0.46),
                  alignment: Alignment.centerRight,
                  child: Text('\$ 0.00'))
            ]),
            Row(
              children: [
                Text(
                  'Other Information',
                  style: txtStyle(weight: FontWeight.w400),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: Sizes().ratioWithScrWidth(context, 0.4),
                      height: Sizes().ratioWithScrHeight(context, 0.06),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {
                            Navigator.pop(context);

                            setState(() {});
                          },
                          child: const Text('Save & Send')),
                    ),
                    SizedBox(
                      width: Sizes().ratioWithScrWidth(context, 0.3),
                      height: Sizes().ratioWithScrHeight(context, 0.06),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {
                            Navigator.pop(context);

                            setState(() {});
                          },
                          child: const Text('Save')),
                    ),
                  ],
                ),
              ],
            )
          ])
        ]);
  }
}
