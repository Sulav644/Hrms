import 'package:flutter/material.dart';

import '../../../core/utils.dart';

class Components {
  Widget bannerCard(
          {required BuildContext context,
          required double allPad,
          required double vertPad,
          required double horzPad,
          required Widget child}) =>
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: Sizes().ratioWithScrHeight(context, allPad)),
        child: Card(
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Sizes().ratioWithScrWidth(context, vertPad),
                  horizontal: Sizes().ratioWithScrWidth(context, horzPad)),
              child: child,
            )),
      );
  Widget separator(BuildContext context) => Container(
        width: Sizes().ratioWithScrWidth(context, 0.5 + 0.25 + 0.23),
        height: 3,
        color: const Color.fromARGB(255, 218, 216, 216),
      );
}
