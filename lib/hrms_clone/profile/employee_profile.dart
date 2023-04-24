import 'dart:math';

import 'package:flutter/material.dart';
import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import '../project_detail_&_member/core/components.dart';

class EmployeeProfile extends StatefulWidget {
  const EmployeeProfile({super.key});

  @override
  State<EmployeeProfile> createState() => _EmployeeProfileState();
}

class _EmployeeProfileState extends State<EmployeeProfile> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();

  String? status;
  String? salary;
  String? paymentType;
  String? pfContribution;
  String? pfNo;
  String? employeePfRate;
  String? additionalPfRate;
  String? esiContribution;
  String? esiNo;
  String? employeeEsiRate;
  String? additionalEsiRate;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return AppWidgets().appScaffold(
        context: context,
        showMenuStatus: showMenuStatus,
        controller: scrollController,
        onClick: () {},
        children: [
          Spacing().verticalSpace(context, 0.02),
          Row(children: [
            Text(
              'Profile',
              style: txtStyle(size: 18, weight: FontWeight.w600),
            ),
          ]),
          Spacing().verticalSpace(context, 0.04),
          Components().detailCard(
              context: context,
              padWid: 0.05,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.center,
              children: [
                Spacing().horizontalSpace(context, 1),
                const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/member_list/download.jpg'),
                  radius: 50,
                ),
                Spacing().verticalSpace(context, 0.02),
                Text(
                  'John Doe',
                  style: txtStyle(size: 22, weight: FontWeight.w600),
                ),
                Spacing().verticalSpace(context, 0.01),
                Text(
                  'UI/UX Design Team',
                  style: txtStyle(size: 13, weight: FontWeight.w300),
                ),
                Spacing().verticalSpace(context, 0.02),
                Text(
                  'Web Designer',
                  style: txtStyle(size: 13, weight: FontWeight.w300),
                ),
                Spacing().verticalSpace(context, 0.02),
                Text(
                  'Employee ID: FT-0001',
                  style: txtStyle(size: 15, weight: FontWeight.w500),
                ),
                Spacing().verticalSpace(context, 0.01),
                Text(
                  'Date of Join: 1st Jan 2013',
                  style: txtStyle(size: 12, weight: FontWeight.w300),
                ),
                Spacing().verticalSpace(context, 0.035),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.pink)),
                    onPressed: () {},
                    child: const Text('Send Message')),
                Spacing().verticalSpace(context, 0.018),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ...List.generate(
                    35,
                    (index) => Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        width: 6,
                        height: 2,
                        color: const Color.fromARGB(255, 122, 120, 120),
                      ),
                    ),
                  ).toList()
                ]),
                Spacing().verticalSpace(context, 0.02),
                bioItem(
                    field: 'Phone',
                    child: Text(
                      '9876543210',
                      style: txtStyle(color: Colors.blue),
                    )),
                bioItem(
                    field: 'Email',
                    child: Text(
                      'barrycuda@example.com',
                      style: txtStyle(color: Colors.blue),
                    )),
                bioItem(field: 'Birthday', child: const Text('2nd August')),
                bioItem(
                    field: 'Address',
                    child: const Text('5754 Airport Rd, Coosada, AL, 36020')),
                bioItem(field: 'Gender', child: const Text('Male')),
                bioItem(
                    field: 'Reports\nto',
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/member_list/downloadTwo.jpg'),
                          radius: 16,
                        ),
                        Spacing().horizontalSpace(context, 0.02),
                        Text(
                          'Jeffery Lalor',
                          style: txtStyle(color: Colors.blue),
                        ),
                      ],
                    )),
              ]),
          Components().detailCard(
              context: context,
              padWid: 0.07,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      index = 0;
                    }),
                    child: optionItem(
                        title: 'Profile',
                        boxColor: index == 0
                            ? const Color.fromARGB(255, 214, 211, 211)
                            : Colors.white,
                        indColor: index == 0 ? Colors.orange : Colors.white),
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      index = 1;
                    }),
                    child: optionItem(
                        title: 'Projects',
                        boxColor: index == 1
                            ? const Color.fromARGB(255, 214, 211, 211)
                            : Colors.white,
                        indColor: index == 1 ? Colors.orange : Colors.white),
                  )
                ]),
                Row(children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      index = 2;
                    }),
                    child: optionItem(
                        title: 'Bank & Statutory (Admin Only)',
                        boxColor: index == 2
                            ? const Color.fromARGB(255, 214, 211, 211)
                            : Colors.white,
                        indColor: index == 2 ? Colors.orange : Colors.white),
                  ),
                ]),
              ]),
          Components().detailCard(
              context: context,
              padWid: 0.05,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.center,
              children: [
                Row(children: [Text('Basic Salary Information')]),
                Row(children: [Text('Salary basis'), Text('*')]),
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
                      value: salary ?? 'Select salary basis type',
                      items: [
                        'Select salary basis type',
                        'Hourly',
                        'Daily',
                        'Weekly',
                        'Monthly'
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: txtStyle(
                                    color: e == salary
                                        ? Colors.red
                                        : Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          salary = value;
                        });
                      },
                    ),
                  ),
                ),
                Spacing().verticalSpace(context, 0.02),
                Row(children: [Text('Salary Amount'), Text('per month')]),
                Container(
                    width: Sizes().scrWidth(context),
                    height: Sizes().ratioWithScrHeight(context, 0.05),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Color.fromARGB(255, 34, 33, 33)),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Row(
                      children: [
                        Container(
                            width: Sizes().ratioWithScrWidth(context, 0.1),
                            height: Sizes().ratioWithScrHeight(context, 0.05),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 185, 182, 182),
                                border: Border.all(
                                    color: Color.fromARGB(255, 53, 52, 52)),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    bottomLeft: Radius.circular(6))),
                            child: Text('\$')),
                        SizedBox(
                            width: Sizes().ratioWithScrWidth(context, 0.7),
                            child: TextField()),
                      ],
                    )),
                Row(children: [
                  Text('Payment type'),
                ]),
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
                      value: paymentType ?? 'Select payment type',
                      items: [
                        'Select payment type',
                        'Bank transfer',
                        'Check',
                        'Cash',
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: txtStyle(
                                    color: e == paymentType
                                        ? Colors.red
                                        : Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          paymentType = value;
                        });
                      },
                    ),
                  ),
                ),
                Spacing().verticalSpace(context, 0.02),
                Row(children: [Text('PF Information')]),
                Row(children: [
                  Text('PF contribution'),
                ]),
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
                      value: pfContribution ?? 'Select PF contribution',
                      items: [
                        'Select PF contribution',
                        'Yes',
                        'No',
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: txtStyle(
                                    color: e == pfContribution
                                        ? Colors.red
                                        : Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          pfContribution = value;
                        });
                      },
                    ),
                  ),
                ),
                Spacing().verticalSpace(context, 0.02),
                Row(children: [Text('PF No.'), Text('*')]),
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
                      value: pfNo ?? 'Select PF contribution',
                      items: [
                        'Select PF contribution',
                        'Yes',
                        'No',
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: txtStyle(
                                    color:
                                        e == pfNo ? Colors.red : Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          pfNo = value;
                        });
                      },
                    ),
                  ),
                ),
                Spacing().verticalSpace(context, 0.02),
                Row(children: [
                  Text('Employee PF rate'),
                ]),
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
                      value: employeePfRate ?? 'Select PF contribution',
                      items: [
                        'Select PF contribution',
                        'Yes',
                        'No',
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: txtStyle(
                                    color: e == employeePfRate
                                        ? Colors.red
                                        : Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          employeePfRate = value;
                        });
                      },
                    ),
                  ),
                ),
                Spacing().verticalSpace(context, 0.02),
                Row(children: [Text('Additional rate'), Text('*')]),
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
                      value: additionalPfRate ?? 'Select additional rate',
                      items: [
                        'Select additional rate',
                        '0%',
                        '1%',
                        '2%',
                        '3%',
                        '4%'
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: txtStyle(
                                    color: e == additionalPfRate
                                        ? Colors.red
                                        : Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          additionalPfRate = value;
                        });
                      },
                    ),
                  ),
                ),
                Spacing().verticalSpace(context, 0.02),
                Row(children: [Text('ESI Information')]),
                Row(children: [
                  Text('ESI contribution'),
                ]),
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
                      value: esiContribution ?? 'Select ESI contribution',
                      items: [
                        'Select ESI contribution',
                        'Yes',
                        'No',
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: txtStyle(
                                    color: e == esiContribution
                                        ? Colors.red
                                        : Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          esiContribution = value;
                        });
                      },
                    ),
                  ),
                ),
                Spacing().verticalSpace(context, 0.02),
                Row(children: [Text('ESI No.'), Text('*')]),
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
                      value: esiNo ?? 'Select ESI contribution',
                      items: [
                        'Select ESI contribution',
                        'Yes',
                        'No',
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: txtStyle(
                                    color:
                                        e == esiNo ? Colors.red : Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          esiNo = value;
                        });
                      },
                    ),
                  ),
                ),
                Spacing().verticalSpace(context, 0.02),
                Row(children: [
                  Text('Employee ESI rate'),
                ]),
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
                      value: employeeEsiRate ?? 'Select ESI contribution',
                      items: [
                        'Select ESI contribution',
                        'Yes',
                        'No',
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: txtStyle(
                                    color: e == employeeEsiRate
                                        ? Colors.red
                                        : Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          employeeEsiRate = value;
                        });
                      },
                    ),
                  ),
                ),
                Spacing().verticalSpace(context, 0.02),
                Row(children: [Text('Additional rate'), Text('*')]),
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
                      value: additionalEsiRate ?? 'Select additional rate',
                      items: [
                        'Select additional rate',
                        'Yes',
                        'No',
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: txtStyle(
                                    color: e == additionalEsiRate
                                        ? Colors.red
                                        : Colors.black),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          additionalEsiRate = value;
                        });
                      },
                    ),
                  ),
                ),
                Spacing().verticalSpace(context, 0.02),
                Row(children: [
                  Text('Total rate'),
                ]),
                TextField(
                  controller: TextEditingController(text: '11%'),
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ]),
          Components().detailCard(
              context: context,
              padWid: 0.05,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Personal Informations',
                        style: txtStyle(size: 20, weight: FontWeight.w600),
                      ),
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 207, 205, 205),
                        radius: 16,
                        child: Icon(
                          Icons.edit,
                          size: 16,
                          color: Color.fromARGB(255, 120, 120, 120),
                        ),
                      ),
                    ]),
                Spacing().verticalSpace(context, 0.015),
                personalInfItem(
                    field: 'Passport No.', child: const Text('9876543210')),
                personalInfItem(
                    field: 'Passport Exp Date.',
                    child: const Text('9876543210')),
                personalInfItem(
                    field: 'Tel',
                    child: Text(
                      '9876543210',
                      style: txtStyle(color: Colors.blue),
                    )),
                personalInfItem(
                    field: 'Nationality', child: const Text('Indian')),
                personalInfItem(field: 'Religion', child: const Text('Hindu')),
                personalInfItem(
                    field: 'Marital status', child: const Text('Married')),
                personalInfItem(
                    field: 'Employment of\nspouce', child: const Text('No')),
                personalInfItem(
                    field: 'No. of children', child: const Text('2')),
              ]),
          Components().detailCard(
              context: context,
              padWid: 0.05,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Emergency Contact',
                        style: txtStyle(size: 20, weight: FontWeight.w600),
                      ),
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 207, 205, 205),
                        radius: 16,
                        child: Icon(
                          Icons.edit,
                          size: 16,
                          color: Color.fromARGB(255, 120, 120, 120),
                        ),
                      ),
                    ]),
                Spacing().verticalSpace(context, 0.015),
                personalInfItem(field: 'Primary', child: const Text('')),
                personalInfItem(field: 'Name', child: const Text('John Doe')),
                personalInfItem(
                    field: 'Relationship', child: const Text('Father')),
                personalInfItem(
                    field: 'Phone',
                    child: const Text('9876543210,\n9876543210')),
                personalInfItem(field: 'Secondary', child: const Text('')),
                personalInfItem(
                    field: 'Name', child: const Text('Karen Wills')),
                personalInfItem(
                    field: 'Relationship', child: const Text('Brother')),
                personalInfItem(
                    field: 'Phone',
                    child: const Text('9876543210,\n9876543210')),
              ]),
          Components().detailCard(
              context: context,
              padWid: 0.05,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bank information',
                        style: txtStyle(size: 20, weight: FontWeight.w600),
                      ),
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 207, 205, 205),
                        radius: 16,
                        child: Icon(
                          Icons.edit,
                          size: 16,
                          color: Color.fromARGB(255, 120, 120, 120),
                        ),
                      ),
                    ]),
                personalInfItem(
                    field: 'Bank Name', child: const Text('ICICI Bank')),
                personalInfItem(
                    field: 'Bank account No.',
                    child: const Text('159843014641')),
                personalInfItem(
                    field: 'IFSC Code', child: const Text('ICI24504')),
                personalInfItem(field: 'PAN No', child: const Text('TC000Y56')),
              ]),
          Components().detailCard(
              context: context,
              padWid: 0.05,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Family Informations',
                        style: txtStyle(size: 20, weight: FontWeight.w600),
                      ),
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 207, 205, 205),
                        radius: 16,
                        child: Icon(
                          Icons.edit,
                          size: 16,
                          color: Color.fromARGB(255, 120, 120, 120),
                        ),
                      ),
                    ]),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(children: const [
                        HorizListTile(width: 0.2, child: Text('Name')),
                        HorizListTile(width: 0.3, child: Text('Relationship')),
                        HorizListTile(width: 0.3, child: Text('Date of Birth')),
                        HorizListTile(width: 0.3, child: Text('Phone')),
                      ]),
                      Row(children: const [
                        HorizListTile(width: 0.2, child: Text('Leo')),
                        HorizListTile(width: 0.3, child: Text('Brother')),
                        HorizListTile(
                            width: 0.3, child: Text('Feb 16th, 2019')),
                        HorizListTile(width: 0.3, child: Text('9876543210')),
                      ]),
                    ],
                  ),
                )
              ]),
          Components().detailCard(
              context: context,
              padWid: 0.05,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Education Informations',
                        style: txtStyle(size: 20, weight: FontWeight.w600),
                      ),
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 207, 205, 205),
                        radius: 16,
                        child: Icon(
                          Icons.edit,
                          size: 16,
                          color: Color.fromARGB(255, 120, 120, 120),
                        ),
                      ),
                    ]),
                bioItemWithLineInd(color: Colors.white),
                bioItemWithLineInd(color: Colors.black),
              ]),
          Components().detailCard(
              context: context,
              padWid: 0.05,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Experience',
                        style: txtStyle(size: 20, weight: FontWeight.w600),
                      ),
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 207, 205, 205),
                        radius: 16,
                        child: Icon(
                          Icons.edit,
                          size: 16,
                          color: Color.fromARGB(255, 120, 120, 120),
                        ),
                      ),
                    ]),
                experienceItemWithLineInd(
                    color: Colors.white,
                    title: 'Web Designer at Zen Corporation',
                    duration: 'Jan 2013-Present (5 years 2 months)'),
                experienceItemWithLineInd(
                    color: Colors.black,
                    title: 'Web Designer at Ron-tech',
                    duration: 'Jan 2013-Present (5 years 2 months)'),
                experienceItemWithLineInd(
                    color: Colors.black,
                    title: 'Web Designer at Dalt Technology',
                    duration: 'Jan 2013-Present (5 years 2 months)'),
              ])
        ]);
  }

  Widget bioItem({required String field, required Widget child}) => Padding(
        padding: EdgeInsets.symmetric(
            vertical: Sizes().ratioWithScrHeight(context, 0.01),
            horizontal: Sizes().ratioWithScrWidth(context, 0.02)),
        child: Row(children: [
          SizedBox(
              width: Sizes().ratioWithScrWidth(context, 0.28),
              child: Text('$field:')),
          SizedBox(
              width: Sizes().ratioWithScrWidth(context, 0.48), child: child),
        ]),
      );
  Widget personalInfItem({required String field, required Widget child}) =>
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: Sizes().ratioWithScrHeight(context, 0.01),
            horizontal: Sizes().ratioWithScrWidth(context, 0.002)),
        child: Row(children: [
          SizedBox(
              width: Sizes().ratioWithScrWidth(context, 0.45),
              child: Text('$field:')),
          SizedBox(
              width: Sizes().ratioWithScrWidth(context, 0.3), child: child),
        ]),
      );
  Widget bioItemWithLineInd({required Color color}) =>
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(children: [
          Container(
            width: 4,
            height: Sizes().ratioWithScrHeight(context, 0.02),
            color: color,
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(100)),
          ),
          Container(
            width: 4,
            height: Sizes().ratioWithScrHeight(context, 0.1),
            color: Colors.black,
          ),
        ]),
        Spacing().horizontalSpace(context, 0.06),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Spacing().verticalSpace(context, 0.02),
          const Text('Internation College of Arts and\nScience (UG)'),
          const Text('Bsc Computer Science'),
          const Text('2000-2003'),
        ])
      ]);
  Widget experienceItemWithLineInd(
          {required Color color,
          required String title,
          required String duration}) =>
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(children: [
          Container(
            width: 4,
            height: Sizes().ratioWithScrHeight(context, 0.02),
            color: color,
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(100)),
          ),
          Container(
            width: 4,
            height: Sizes().ratioWithScrHeight(context, 0.06),
            color: Colors.black,
          ),
        ]),
        Spacing().horizontalSpace(context, 0.06),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Spacing().verticalSpace(context, 0.02),
          Text(title),
          Text(duration),
        ])
      ]);
  Widget optionItem({
    required String title,
    required Color boxColor,
    required Color indColor,
  }) =>
      Stack(
        children: [
          AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              color: boxColor,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Sizes().ratioWithScrHeight(context, 0.015),
                    horizontal: Sizes().ratioWithScrWidth(context, 0.06)),
                child: Text(title,
                    style: txtStyle(weight: FontWeight.w600, height: 1.4)),
              )),
          Transform(
            transform: Matrix4.skewY(40 / 180 * pi),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              width: 4,
              height: Sizes().ratioWithScrHeight(context, 0.03),
              color: indColor,
            ),
          ),
          Positioned(
            top: Sizes().ratioWithScrHeight(context, 0.02),
            child: Transform(
              transform: Matrix4.skewY(-40 / 180 * pi),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                width: 4,
                height: Sizes().ratioWithScrHeight(context, 0.03),
                color: indColor,
              ),
            ),
          )
        ],
      );
}
