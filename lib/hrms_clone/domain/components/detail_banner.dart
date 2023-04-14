import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/data/detail_banner.dart';

import '../../../core/utils.dart';

class DetailBannerWidget extends StatelessWidget {
  final DetailBanner e;
  const DetailBannerWidget({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: EdgeInsets.all(Sizes().ratioWithScrWidth(context, 0.08)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(e.icon),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Text(
                '${e.count}',
                style: txtStyle(size: 24, weight: FontWeight.bold),
              ),
              Spacing().verticalSpace(context, 0.02),
              Text(
                e.title!,
                style: txtStyle(
                  size: 18,
                ),
              )
            ])
          ]),
    ));
  }
}
