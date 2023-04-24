import 'package:flutter/material.dart';
import '../../../core/utils.dart';

class UpcomingHoliday extends StatelessWidget {
  const UpcomingHoliday({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Spacing().verticalSpace(context, 0.048),
      Text(
        'UPCOMING HOLIDAY',
        style: txtStyle(size: 16, weight: FontWeight.w600),
      ),
      Spacing().verticalSpace(context, 0.024),
      Container(
          width: Sizes().scrWidth(context),
          height: Sizes().ratioWithScrHeight(context, 0.08),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: const Color.fromARGB(255, 165, 163, 163), width: 0.5),
              borderRadius: BorderRadius.circular(10)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Mon 20 May 2019 - Ramzan',
              style: txtStyle(size: 20, weight: FontWeight.w600),
            )
          ]))
    ]);
  }
}
