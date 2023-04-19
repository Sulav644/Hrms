import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/domain/show_priority_cubit.dart';

import '../../../core/utils.dart';
import '../core/components.dart';

class ProjectDetailWithCost extends StatefulWidget {
  const ProjectDetailWithCost({super.key});

  @override
  State<ProjectDetailWithCost> createState() => ProjectDetailWithCostState();
}

class ProjectDetailWithCostState extends State<ProjectDetailWithCost> {
  GlobalKey keyContext = GlobalKey();
  double posX = 0;
  double posY = 0;

  @override
  Widget build(BuildContext context) {
    return Components().detailCard(
        context: context,
        padWid: 0.07,
        padHeight: 0.04,
        alignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Project details',
                    style: txtStyle(size: 20, weight: FontWeight.w500),
                  ),
                  Spacing().verticalSpace(context, 0.04),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 190, 189, 189)),
                      ),
                      child: Column(children: [
                        detailTile(
                            color: Color.fromARGB(255, 235, 231, 231),
                            context: context,
                            field: 'Cost',
                            value: Text(
                              '\$1200',
                              style: txtStyle(weight: FontWeight.w300),
                            )),
                        detailTile(
                            color: Colors.white,
                            context: context,
                            field: 'Total Hours',
                            value: Text(
                              '100 Hours',
                              style: txtStyle(weight: FontWeight.w300),
                            )),
                        detailTile(
                            color: Color.fromARGB(255, 235, 231, 231),
                            context: context,
                            field: 'Created',
                            value: Text(
                              '25 Feb, 2019',
                              style: txtStyle(weight: FontWeight.w300),
                            )),
                        detailTile(
                            color: Colors.white,
                            context: context,
                            field: 'Deadline',
                            value: Text(
                              '12 Jun, 2019',
                              style: txtStyle(weight: FontWeight.w300),
                            )),
                        detailTile(
                            color: Color.fromARGB(255, 235, 231, 231),
                            context: context,
                            field: 'Priority',
                            value: dropDownBox(
                                context: context,
                                key: keyContext,
                                onClick: () {
                                  RenderBox box = keyContext.currentContext!
                                      .findRenderObject() as RenderBox;
                                  Offset position =
                                      box.localToGlobal(Offset.zero);
                                  setState(() {
                                    posX = position.dx;
                                    posY = position.dy;
                                  });
                                  print('px ${position.dx} py ${position.dy}');
                                  context
                                      .read<ShowPriorityCubit>()
                                      .toggleState();
                                  context
                                      .read<SetPositionCubit>()
                                      .setPosition([position.dx, position.dy]);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Highest',
                                          style: txtStyle(
                                              size: 9,
                                              color: Colors.white,
                                              weight: FontWeight.w300),
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          size: 18,
                                          color: Colors.white,
                                        )
                                      ]),
                                ))),
                        detailTile(
                            color: Colors.white,
                            context: context,
                            field: 'Created by',
                            value: Text(
                              'Barry Cuda',
                              style: txtStyle(
                                  color: Colors.blue, weight: FontWeight.w300),
                            )),
                        detailTile(
                            color: Color.fromARGB(255, 235, 231, 231),
                            context: context,
                            field: 'Status',
                            value: Text(
                              'Working',
                              style: txtStyle(weight: FontWeight.w300),
                            ))
                      ])),
                  Spacing().verticalSpace(context, 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Progress',
                        style: txtStyle(weight: FontWeight.w300),
                      ),
                      Text(
                        '40%',
                        style: txtStyle(
                            color: Color.fromARGB(
                              255,
                              58,
                              216,
                              64,
                            ),
                            weight: FontWeight.w300),
                      )
                    ],
                  ),
                  Spacing().verticalSpace(context, 0.012),
                  Stack(
                    children: [
                      levelBar(
                          context: context,
                          width: Sizes().scrWidth(context),
                          color: Color.fromARGB(255, 211, 207, 207),
                          borderRad: [10, 10, 10, 10]),
                      levelBar(
                          context: context,
                          width: Sizes().ratioWithScrWidth(context, 0.32),
                          color: Color.fromARGB(255, 56, 219, 62),
                          borderRad: [10, 10, 0, 0]),
                    ],
                  )
                ],
              ),
            ],
          ),
        ]);
  }

  Widget detailTile(
          {required BuildContext context,
          required Color color,
          required String field,
          required Widget value}) =>
      Column(
        children: [
          Container(
            color: color,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Sizes().ratioWithScrHeight(context, 0.018),
                  horizontal: Sizes().ratioWithScrHeight(context, 0.015)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$field:',
                      style: txtStyle(weight: FontWeight.w400),
                    ),
                    Container(
                      height: Sizes().ratioWithScrHeight(context, 0.036),
                    ),
                    value
                  ]),
            ),
          ),
          Divider(
            height: 1,
            color: Color.fromARGB(255, 190, 189, 189),
          )
        ],
      );

  Widget levelBar(
          {required BuildContext context,
          required double width,
          required Color color,
          required List<double> borderRad}) =>
      Container(
        width: width,
        height: Sizes().ratioWithScrHeight(context, 0.006),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderRad[0]),
                bottomLeft: Radius.circular(borderRad[1]),
                topRight: Radius.circular(borderRad[2]),
                bottomRight: Radius.circular(borderRad[3]))),
      );
  Widget dropDownBox(
          {required BuildContext context,
          required Key key,
          required VoidCallback onClick,
          required Widget child}) =>
      GestureDetector(
        onTap: () => onClick(),
        child: Container(
          key: key,
          width: Sizes().ratioWithScrWidth(context, 0.19),
          height: Sizes().ratioWithScrHeight(context, 0.036),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 240, 150, 143),
              borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          child: Container(
              width: Sizes().ratioWithScrWidth(context, 0.18),
              height: Sizes().ratioWithScrHeight(context, 0.03),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 21, 6),
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              child: child),
        ),
      );
}
