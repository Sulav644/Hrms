import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/utils.dart';

class PopupMenu extends StatelessWidget {
  final bool showMenuStatus;
  const PopupMenu({super.key, required this.showMenuStatus});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (showMenuStatus)
          Padding(
            padding: EdgeInsets.only(
                top: Sizes().ratioWithScrWidth(context, 0.01),
                right: Sizes().ratioWithScrWidth(context, 0.048)),
            child: Card(
                elevation: 2,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: Sizes().ratioWithScrWidth(context, 0.01),
                    left: Sizes().ratioWithScrWidth(context, 0.095),
                    right: Sizes().ratioWithScrWidth(context, 0.18),
                    bottom: Sizes().ratioWithScrWidth(context, 0.05),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        menuOption(context, 'My Profile'),
                        menuOption(context, 'Settings'),
                        menuOption(context, 'Logout')
                      ]),
                )),
          ),
      ],
    );
  }

  Widget menuOption(BuildContext context, String title) => Padding(
        padding:
            EdgeInsets.only(top: Sizes().ratioWithScrHeight(context, 0.03)),
        child: Text(title),
      );
}
