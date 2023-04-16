import 'package:flutter/material.dart';

import '../../../core/utils.dart';

class Components {
  Widget addButton(
          {required BuildContext context,
          required String title,
          required double borderRad}) =>
      Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 153, 69),
            borderRadius: BorderRadius.circular(borderRad)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Icon(
              Icons.add,
              size: 16,
              color: Colors.white,
            ),
            Spacing().horizontalSpace(context, 0.005),
            Text(
              title,
              style: txtStyle(color: Colors.white, size: 16),
            ),
          ]),
        ),
      );
  Widget detailCard({
    required BuildContext context,
    required double padWid,
    required double padHeight,
    required CrossAxisAlignment alignment,
    required List<Widget> children,
  }) =>
      Card(
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Sizes().ratioWithScrWidth(context, padWid),
                vertical: Sizes().ratioWithScrHeight(context, padHeight)),
            child: Column(crossAxisAlignment: alignment, children: children),
          ));
}
