import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/admin_dashboard/data/detail_banner.dart';

import '../../../core/utils.dart';
import '../core/components.dart';

class DetailBannerWidget extends StatelessWidget {
  final DetailBanner e;
  const DetailBannerWidget({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return Components().bannerCard(
        context: context,
        allPad: 0.015,
        vertPad: 0.08,
        horzPad: 0.08,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              iconWidget(),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                totalCount(),
                Spacing().verticalSpace(context, 0.015),
                field(),
              ])
            ]));
  }

  Widget iconWidget() => CircleAvatar(
        backgroundColor: Color.fromARGB(255, 247, 211, 157),
        radius: 35,
        child: Icon(
          e.icon,
          size: 35,
          color: Colors.orange,
        ),
      );
  Widget totalCount() => Text(
        '${e.count}',
        style: txtStyle(size: 32, weight: FontWeight.bold),
      );
  Widget field() => Text(
        e.title!,
        style: txtStyle(
          size: 18,
        ),
      );
}
