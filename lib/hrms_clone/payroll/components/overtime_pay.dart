import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../holidays/components/horiz_list_tile.dart';
import '../../project_detail_&_member/core/components.dart';

class OvertimePay extends StatelessWidget {
  const OvertimePay({super.key});

  @override
  Widget build(BuildContext context) {
    return Components().detailCard(
        context: context,
        padWid: 0.07,
        padHeight: 0.04,
        alignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: [
                    HorizListTile(width: 0.3, child: Text('Name')),
                    HorizListTile(width: 0.3, child: Text('Rate')),
                    HorizListTile(width: 0.2, child: Text('Action')),
                  ],
                ),
                Row(
                  children: [
                    HorizListTile(
                        width: 0.3, child: Text('Normal day\nOT 1.5x')),
                    HorizListTile(width: 0.3, child: Text('Hourly\n1.5')),
                  ],
                ),
              ],
            ),
          )
        ]);
  }
}
