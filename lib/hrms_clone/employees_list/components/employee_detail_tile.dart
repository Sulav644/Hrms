import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/utils.dart';
import '../../project_detail_&_member/core/components.dart';
import '../../project_detail_&_member/data/member_list.dart';

class EmployeeDetailTile extends StatelessWidget {
  final MemberList e;
  const EmployeeDetailTile({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return Components().detailCard(
      context: context,
      padWid: 0.05,
      padHeight: 0.034,
      alignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PopupMenuButton(
              padding: EdgeInsets.zero,
              offset: Offset(1, Sizes().ratioWithScrHeight(context, 0.06)),
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
                            Spacing().horizontalSpace(context, 0.02),
                            Text(
                              e,
                              style:
                                  txtStyle(size: 13, weight: FontWeight.w400),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(
                            top: Sizes().ratioWithScrWidth(context, 0.02),
                            left: Sizes().ratioWithScrWidth(context, 0.05),
                            bottom: Sizes().ratioWithScrWidth(context, 0.02),
                            right: Sizes().ratioWithScrWidth(context, 0.1)),
                        height: 0,
                      ))
                ];
              },
            ),
          ],
        ),
        CircleAvatar(
          backgroundImage: AssetImage(
            e.image!,
          ),
          radius: 40,
        ),
        Spacing().verticalSpace(context, 0.018),
        Text(
          e.name!,
          style: txtStyle(size: 20, weight: FontWeight.w600),
        ),
        Spacing().verticalSpace(context, 0.014),
        Text(
          e.designation!,
          style: txtStyle(
              color: Color.fromARGB(255, 128, 125, 125),
              size: 14,
              weight: FontWeight.w400),
        ),
      ],
    );
  }
}
