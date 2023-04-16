import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../utils.dart';

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
            child: Container(
                width: Sizes().ratioWithScrWidth(context, 0.4),
                height: Sizes().ratioWithScrHeight(context, 0.18),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 77, 75, 75),
                          offset: Offset(1, 1)),
                      BoxShadow(
                          color: Color.fromARGB(255, 77, 75, 75),
                          offset: Offset(-0.6, -0.8))
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Sizes().ratioWithScrWidth(context, 0.07)),
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
