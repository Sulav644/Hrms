import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/employee_dashboard/data/working_status_detail.dart';

import '../../../core/utils.dart';
import '../../admin_dashboard/core/components.dart';

class WorkingStatusDetailWidget extends StatelessWidget {
  final WorkingStatusDetail e;
  const WorkingStatusDetailWidget({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Sizes().ratioWithScrHeight(context, 0.01)),
      child: Container(
          width: Sizes().scrWidth(context),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Color.fromARGB(255, 165, 163, 163), width: 0.5),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Spacing().verticalSpace(context, 0.01),
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Spacing().horizontalSpace(context, 0.035),
                Icon(
                  e.icon,
                  color: Color.fromARGB(255, 29, 28, 28),
                  size: 40,
                ),
                Spacing().horizontalSpace(context, 0.055),
                Container(
                    width: Sizes().ratioWithScrWidth(
                        context, e.showPerson == null ? 0.434 : 0.6),
                    child: Text(
                      '${e.workStatus}',
                      style: txtStyle(
                          color: Color.fromARGB(255, 29, 28, 28),
                          size: 22,
                          height: 1.6),
                    )),
                Spacing()
                    .horizontalSpace(context, e.persons == null ? 0.055 : 0.03),
                if (e.showPerson == null)
                  if (e.persons == null)
                    Container(
                      width: Sizes().ratioWithScrWidth(context, 0.12),
                      height: Sizes().ratioWithScrWidth(context, 0.12),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 202, 199, 199),
                              width: 2.5),
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: e.person!, fit: BoxFit.cover)),
                    ),
                if (e.showPerson == null)
                  if (e.person == null)
                    Container(
                      width: Sizes().ratioWithScrWidth(context, 0.22),
                      child: Stack(children: [
                        Container(
                          width: Sizes().ratioWithScrWidth(context, 0.12),
                          height: Sizes().ratioWithScrWidth(context, 0.12),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 202, 199, 199),
                                  width: 2.5),
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: e.persons![0], fit: BoxFit.cover)),
                        ),
                        Positioned(
                          left: Sizes().ratioWithScrWidth(context, 0.07),
                          child: Container(
                            width: Sizes().ratioWithScrWidth(context, 0.12),
                            height: Sizes().ratioWithScrWidth(context, 0.12),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 202, 199, 199),
                                    width: 2.5),
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image: e.persons![1], fit: BoxFit.cover)),
                          ),
                        ),
                      ]),
                    )
              ]),
              Spacing().verticalSpace(context, 0.03),
            ],
          )),
    );
  }
}
