import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

import '../../../core/utils.dart';
import '../../data/detail_banner.dart';

class StatusChangeBannerWidget extends StatelessWidget {
  final StatusChangeBanner e;
  const StatusChangeBannerWidget({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat('#,##,000');
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Sizes().ratioWithScrHeight(context, 0.015)),
      child: Card(
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: Sizes().ratioWithScrHeight(context, 0.03),
                horizontal: Sizes().ratioWithScrWidth(context, 0.05)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  e.title!,
                  style: txtStyle(size: 15),
                ),
                Text(
                  e.valueChanged == RateChanged.decreased()
                      ? '-${e.rateChange}%'
                      : '+${e.rateChange}%',
                  style: txtStyle(
                      color: e.valueChanged == RateChanged.decreased()
                          ? Colors.red
                          : Colors.green,
                      size: 15),
                ),
              ]),
              Spacing().verticalSpace(context, 0.03),
              Text(
                e.isPriceCount
                    ? '\$${formatter.format(e.currentCount)}'
                    : '${e.currentCount}',
                style: txtStyle(size: 25, weight: FontWeight.bold),
              ),
              Spacing().verticalSpace(context, 0.03),
              Stack(
                children: [
                  Container(
                    width: Sizes().scrWidth(context),
                    height: 8,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 145, 143, 143),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    width: Sizes().ratioWithScrWidth(context, 0.6),
                    height: 8,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 153, 69),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                  ),
                ],
              ),
              Spacing().verticalSpace(context, 0.02),
              Row(
                children: [
                  Text(
                    '${e.totalOrPrevious} ',
                    style: txtStyle(size: 15),
                  ),
                  Text(
                    e.isPriceCount
                        ? '\$${formatter.format(e.totalCount)}'
                        : '${e.totalCount}',
                    style: txtStyle(
                        size: 15, color: Color.fromARGB(255, 161, 159, 159)),
                  ),
                ],
              )
            ]),
          )),
    );
  }
}
