import 'package:flutter/material.dart';

import '../../../core/utils.dart';

class Components {
  Widget taskCountBanner(
          {required BuildContext context,
          required String title,
          required List<Widget> firstTwoTasks,
          Widget? thirdTask,
          Widget? applyButton}) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Spacing().verticalSpace(context, 0.048),
        Text(
          title,
          style: txtStyle(size: 16, weight: FontWeight.w600),
        ),
        Spacing().verticalSpace(context, 0.024),
        Container(
            width: Sizes().scrWidth(context),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Color.fromARGB(255, 165, 163, 163), width: 0.5),
                borderRadius: BorderRadius.circular(10)),
            child: Column(children: [
              Spacing().verticalSpace(context, 0.05),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                firstTwoTasks[0],
                Spacing().horizontalSpace(context, 0.07),
                Container(
                  width: 1,
                  height: Sizes().ratioWithScrHeight(context, 0.06),
                  color: Color.fromARGB(255, 167, 163, 163),
                ),
                Spacing().horizontalSpace(context, 0.07),
                firstTwoTasks[1]
              ]),
              Spacing().verticalSpace(context, 0.05),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [thirdTask ?? applyButton!]),
              Spacing().verticalSpace(context, 0.05),
            ]))
      ]);
  Widget taskCount(
          {required BuildContext context,
          required String count,
          required String task}) =>
      Column(children: [
        Text(
          count,
          style: txtStyle(size: 22, weight: FontWeight.w700),
        ),
        Spacing().verticalSpace(context, 0.015),
        Text(
          task,
          style: txtStyle(
              color: Color.fromARGB(255, 90, 88, 88),
              size: 14,
              weight: FontWeight.w700),
        ),
      ]);
  Widget applyButton({required BuildContext context, required String title}) =>
      SizedBox(
        height: Sizes().ratioWithScrHeight(context, 0.056),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange)),
            onPressed: () {},
            child: Text('Apply $title')),
      );
}
