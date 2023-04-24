import 'package:flutter/material.dart';
import '../../../core/utils.dart';
import '../../admin_dashboard/components/project_list.dart';
import '../../project_detail_&_member/core/components.dart';

class MemberDetailVertList extends StatelessWidget {
  const MemberDetailVertList({super.key});

  @override
  Widget build(BuildContext context) {
    const path = 'assets/images/member_list';
    return Column(children: [
      ...projectList
          .map(
            (e) => Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Sizes().ratioWithScrHeight(context, 0.015)),
              child: Components().detailCard(
                context: context,
                padWid: 0.05,
                padHeight: 0.034,
                alignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.title!,
                              style:
                                  txtStyle(size: 17, weight: FontWeight.w500),
                            ),
                            Spacing().verticalSpace(context, 0.009),
                            Row(
                              children: [
                                Text(
                                  '${e.openTask} ',
                                  style: txtStyle(
                                      size: 11,
                                      weight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                Text(
                                  'open tasks, ',
                                  style: txtStyle(
                                      size: 11,
                                      color: const Color.fromARGB(
                                          255, 122, 121, 121)),
                                ),
                                Text(
                                  '${e.completedTask} ',
                                  style: txtStyle(
                                      size: 11,
                                      color: Colors.black,
                                      weight: FontWeight.w500),
                                ),
                                Text(
                                  'tasks completed',
                                  style: txtStyle(
                                      size: 11,
                                      color: const Color.fromARGB(
                                          255, 122, 121, 121)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        popupMenuButton(context: context, children: [
                          popupMenuItem(
                              context: context,
                              icon: Icons.edit_outlined,
                              title: 'Edit'),
                          popupMenuItem(
                              context: context,
                              icon: Icons.delete_outline,
                              title: 'Delete'),
                        ])
                      ]),
                  Spacing().verticalSpace(context, 0.018),
                  SizedBox(
                    width: Sizes().ratioWithScrWidth(context, 0.78),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the '
                      'printing and typesetting industry. When '
                      'an unknown printer took a gallery of type '
                      'and scrambled it...',
                      style: txtStyle(
                          size: 13.5,
                          color: const Color.fromARGB(255, 100, 99, 99),
                          height: 1.4),
                    ),
                  ),
                  Spacing().verticalSpace(context, 0.02),
                  Text(
                    'Deadline',
                    style: txtStyle(weight: FontWeight.w400),
                  ),
                  Spacing().verticalSpace(context, 0.008),
                  Text(
                    '17 Apr 2019',
                    style: txtStyle(
                        size: 13,
                        color: const Color.fromARGB(255, 100, 99, 99),
                        weight: FontWeight.w500),
                  ),
                  Spacing().verticalSpace(context, 0.021),
                  Text(
                    'Project Leader',
                    style: txtStyle(weight: FontWeight.w400),
                  ),
                  Spacing().verticalSpace(context, 0.012),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      '$path/download.jpg',
                    ),
                    radius: 16,
                  ),
                  Spacing().verticalSpace(context, 0.022),
                  const Text('Team :'),
                  Spacing().verticalSpace(context, 0.01),
                  Row(children: [
                    ...[
                      '$path/downloadTwo.jpg',
                      '$path/downloadThree.jpg',
                      '$path/downloadFour.jpg',
                      '$path/downloadFive.jpg'
                    ]
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  e,
                                ),
                                radius: 16,
                              ),
                            ))
                        .toList(),
                    CircleAvatar(
                      backgroundColor: Colors.pink,
                      radius: 16,
                      child: Text(
                        '+15',
                        style: txtStyle(
                            color: Colors.white,
                            size: 12,
                            weight: FontWeight.w500),
                      ),
                    ),
                  ]),
                  Spacing().verticalSpace(context, 0.026),
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
                            color: const Color.fromARGB(
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
                          color: const Color.fromARGB(255, 211, 207, 207),
                          borderRad: [10, 10, 10, 10]),
                      levelBar(
                          context: context,
                          width: Sizes().ratioWithScrWidth(context, 0.32),
                          color: const Color.fromARGB(255, 56, 219, 62),
                          borderRad: [10, 10, 0, 0]),
                    ],
                  )
                ],
              ),
            ),
          )
          .toList()
    ]);
  }

  PopupMenuItem popupMenuItem(
          {required BuildContext context,
          required IconData icon,
          required String title}) =>
      PopupMenuItem(
        child: Row(
          children: [
            Icon(icon),
            Spacing().horizontalSpace(context, 0.02),
            Text(title),
            Spacing().horizontalSpace(context, 0.01),
          ],
        ),
      );
  Widget popupMenuButton(
          {required BuildContext context,
          required List<PopupMenuItem> children}) =>
      Container(
          width: Sizes().ratioWithScrWidth(context, 0.18),
          alignment: Alignment.centerRight,
          child: PopupMenuButton(
            padding: EdgeInsets.zero,
            offset: Offset(-Sizes().ratioWithScrWidth(context, 0.08),
                Sizes().ratioWithScrHeight(context, 0.06)),
            itemBuilder: (context) {
              return children;
            },
          ));
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
}
