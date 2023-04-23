import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import '../project_detail_&_member/core/components.dart';
import '../view_more_projects/components/entries_limit_widget.dart';

class ClientProfile extends StatefulWidget {
  ClientProfile({super.key});

  @override
  State<ClientProfile> createState() => _ClientProfileState();
}

class _ClientProfileState extends State<ClientProfile> {
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
                  'Global Technologies',
                  style: txtStyle(size: 22, weight: FontWeight.w600),
                ),
                Text(
                  'Barry Cuda',
                  style: txtStyle(size: 18, weight: FontWeight.w500),
                ),
                Text(
                  'CEO',
                  style: txtStyle(size: 16, weight: FontWeight.w200),
                ),
                Text(
                  'Employee ID: CLT-0001',
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
                bioItem(field: 'Phone', child: Text('9876543210')),
              ])
        ]);
  }

  Widget bioItem({required String field, required Widget child}) => Padding(
        padding: EdgeInsets.symmetric(
            vertical: Sizes().ratioWithScrHeight(context, 0.01)),
        child: Row(children: [
          Container(
              width: Sizes().ratioWithScrWidth(context, 0.2),
              child: Text('$field:')),
          Container(
              width: Sizes().ratioWithScrWidth(context, 0.6), child: child),
        ]),
      );
}
