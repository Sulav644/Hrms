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
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Sizes().ratioWithScrHeight(context, 0.015)),
      child: Card(
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.all(Sizes().ratioWithScrWidth(context, 0.08)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 247, 211, 157),
                    radius: 35,
                    child: Icon(
                      e.icon,
                      size: 35,
                      color: Colors.orange,
                    ),
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Text(
                      '${e.count}',
                      style: txtStyle(size: 32, weight: FontWeight.bold),
                    ),
                    Spacing().verticalSpace(context, 0.015),
                    Text(
                      e.title!,
                      style: txtStyle(
                        size: 18,
                      ),
                    )
                  ])
                ]),
          )),
    );
  }
}
