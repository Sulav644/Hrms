import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import '../project_detail_&_member/core/components.dart';
import '../view_more_projects/components/entries_limit_widget.dart';

class EmployeeProfile extends StatefulWidget {
  EmployeeProfile({super.key});

  @override
  State<EmployeeProfile> createState() => _EmployeeProfileState();
}

class _EmployeeProfileState extends State<EmployeeProfile> {
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
          Row(children: [
            Text('Profile'),
          ]),
          Components().detailCard(
              context: context,
              padWid: 0.05,
              padHeight: 0.04,
              alignment: CrossAxisAlignment.center,
              children: [
                Spacing().horizontalSpace(context, 1),
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/member_list/download.jpg'),
                  radius: 50,
                ),
                Text(
                  'John Doe',
                  style: txtStyle(size: 22, weight: FontWeight.w600),
                ),
                Text(
                  'UI/UX Design Team',
                  style: txtStyle(size: 18, weight: FontWeight.w500),
                ),
                Text(
                  'Web Designer',
                  style: txtStyle(size: 16, weight: FontWeight.w200),
                ),
                Text(
                  'Employee ID: FT-0001',
                  style: txtStyle(size: 18, weight: FontWeight.w500),
                ),
                Text(
                  'Date of Join: 1st Jan 2013',
                  style: txtStyle(size: 18, weight: FontWeight.w500),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange)),
                    onPressed: () {},
                    child: Text('Send Message')),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ...List.generate(
                    35,
                    (index) => Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        width: 6,
                        height: 2,
                        color: Color.fromARGB(255, 122, 120, 120),
                      ),
                    ),
                  ).toList()
                ]),
                bioItem(field: 'Phone', child: Text('9876543210')),
                bioItem(field: 'Email', child: Text('barrycuda@example.com')),
                bioItem(field: 'Birthday', child: Text('2nd August')),
                bioItem(
                    field: 'Address',
                    child: Text('5754 Airport Rd, Coosada, AL, 36020')),
                bioItem(field: 'Gender', child: Text('Male')),
                bioItem(
                    field: 'Reports\nto',
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/member_list/downloadTwo.jpg'),
                        ),
                        Text('Jeffery Lalor'),
                      ],
                    )),
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
                      Text('Personal Informations'),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 170, 168, 168),
                        child: Icon(
                          Icons.edit,
                          color: Color.fromARGB(255, 54, 54, 54),
                        ),
                      ),
                    ]),
                personalInfItem(
                    field: 'Passport No.', child: Text('9876543210')),
                personalInfItem(
                    field: 'Passport Exp Date.', child: Text('9876543210')),
                personalInfItem(field: 'Tel', child: Text('9876543210')),
                personalInfItem(field: 'Nationality', child: Text('Indian')),
                personalInfItem(field: 'Religion', child: Text('Hindu')),
                personalInfItem(
                    field: 'Marital status', child: Text('Married')),
                personalInfItem(
                    field: 'Employment of\nspouce', child: Text('No')),
                personalInfItem(field: 'No. of children', child: Text('2')),
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
                      Text('Emergency Contact'),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 170, 168, 168),
                        child: Icon(
                          Icons.edit,
                          color: Color.fromARGB(255, 54, 54, 54),
                        ),
                      ),
                    ]),
                personalInfItem(field: 'Primary', child: Text('')),
                personalInfItem(field: 'Name', child: Text('John Doe')),
                personalInfItem(field: 'Relationship', child: Text('Father')),
                personalInfItem(
                    field: 'Phone', child: Text('9876543210,\n9876543210')),
                personalInfItem(field: 'Secondary', child: Text('')),
                personalInfItem(field: 'Name', child: Text('Karen Wills')),
                personalInfItem(field: 'Relationship', child: Text('Brother')),
                personalInfItem(
                    field: 'Phone', child: Text('9876543210,\n9876543210')),
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
                      Text('Bank information'),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 170, 168, 168),
                        child: Icon(
                          Icons.edit,
                          color: Color.fromARGB(255, 54, 54, 54),
                        ),
                      ),
                    ]),
                personalInfItem(field: 'Bank Name', child: Text('ICICI Bank')),
                personalInfItem(
                    field: 'Bank account No.', child: Text('159843014641')),
                personalInfItem(field: 'IFSC Code', child: Text('ICI24504')),
                personalInfItem(field: 'PAN No', child: Text('TC000Y56')),
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
                      Text('Family Informations'),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 170, 168, 168),
                        child: Icon(
                          Icons.edit,
                          color: Color.fromARGB(255, 54, 54, 54),
                        ),
                      ),
                    ]),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(children: [
                        HorizListTile(width: 0.2, child: Text('Name')),
                        HorizListTile(width: 0.3, child: Text('Relationship')),
                        HorizListTile(width: 0.3, child: Text('Date of Birth')),
                        HorizListTile(width: 0.3, child: Text('Phone')),
                      ]),
                      Row(children: [
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
                      Text('Education Informations'),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 170, 168, 168),
                        child: Icon(
                          Icons.edit,
                          color: Color.fromARGB(255, 54, 54, 54),
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
                      Text('Experience'),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 170, 168, 168),
                        child: Icon(
                          Icons.edit,
                          color: Color.fromARGB(255, 54, 54, 54),
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
            vertical: Sizes().ratioWithScrHeight(context, 0.01)),
        child: Row(children: [
          Container(
              width: Sizes().ratioWithScrWidth(context, 0.3),
              child: Text('$field:')),
          Container(
              width: Sizes().ratioWithScrWidth(context, 0.5), child: child),
        ]),
      );
  Widget personalInfItem({required String field, required Widget child}) =>
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: Sizes().ratioWithScrHeight(context, 0.01)),
        child: Row(children: [
          Container(
              width: Sizes().ratioWithScrWidth(context, 0.45),
              child: Text('$field:')),
          Container(
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
          Text('Internation College of Arts and\nScience (UG)'),
          Text('Bsc Computer Science'),
          Text('2000-2003'),
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
}
