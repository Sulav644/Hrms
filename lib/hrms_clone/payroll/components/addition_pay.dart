import 'package:flutter/material.dart';
import '../../../core/utils.dart';
import '../../holidays/components/horiz_list_tile.dart';
import '../../project_detail_&_member/core/components.dart';

class AdditionPay extends StatelessWidget {
  const AdditionPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Components().detailCard(
        context: context,
        padWid: 0.05,
        padHeight: 0.04,
        alignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Container(
                  height: Sizes().ratioWithScrHeight(context, 0.097),
                  alignment: Alignment.topCenter,
                  color: const Color.fromARGB(255, 209, 206, 206),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: Sizes().ratioWithScrHeight(context, 0.002)),
                    child: Container(
                      height: Sizes().ratioWithScrHeight(context, 0.09),
                      color: Colors.white,
                      child: Row(
                        children: [
                          HorizListTile(
                              width: 0.2,
                              child: Text(
                                'Name',
                                style: txtStyle(
                                    weight: FontWeight.w600, height: 1.4),
                              )),
                          HorizListTile(
                              width: 0.35,
                              child: Text('Category',
                                  style: txtStyle(
                                      weight: FontWeight.w600, height: 1.4))),
                          HorizListTile(
                              width: 0.2,
                              child: Text('Default/Unit\nAmount',
                                  style: txtStyle(
                                      weight: FontWeight.w600, height: 1.4))),
                          HorizListTile(
                              width: 0.2,
                              child: Text('Action',
                                  style: txtStyle(
                                      weight: FontWeight.w600, height: 1.4))),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacing().verticalSpace(context, 0.02),
                Row(
                  children: [
                    HorizListTile(
                        width: 0.2,
                        child: Text('Leave\nbalance\namount',
                            style: txtStyle(
                                weight: FontWeight.w400, height: 1.4))),
                    HorizListTile(
                        width: 0.35,
                        child: Text('Monthly\nremuneration',
                            style: txtStyle(
                                weight: FontWeight.w400, height: 1.4))),
                    HorizListTile(
                        width: 0.2,
                        child: Text('\$5',
                            style: txtStyle(
                                weight: FontWeight.w400, height: 1.4))),
                    HorizListTile(
                        width: 0.2,
                        child: PopupMenuButton(
                          itemBuilder: (context) {
                            return [];
                          },
                        )),
                  ],
                ),
              ],
            ),
          )
        ]);
  }
}
