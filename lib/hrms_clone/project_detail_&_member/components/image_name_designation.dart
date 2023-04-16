import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/data/member_list.dart';

import '../../../core/utils.dart';

class ImageNameDesignation extends StatelessWidget {
  final MemberList e;
  const ImageNameDesignation({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Sizes().ratioWithScrHeight(context, 0.01)),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          radius: 22,
          backgroundImage: AssetImage(
            e.image!,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              e.name!,
              style: txtStyle(size: 16, weight: FontWeight.bold),
            ),
            Spacing().verticalSpace(context, 0.012),
            Text(
              e.designation!,
              style: txtStyle(size: 13),
            )
          ],
        ),
      ),
    );
  }
}
