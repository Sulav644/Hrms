import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/utils.dart';
import '../core/components.dart';

class HeadingTitleMenuEdit extends StatelessWidget {
  const HeadingTitleMenuEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        'Hospital Admin',
        style: txtStyle(size: 18, weight: FontWeight.bold),
      ),
      Row(
        children: [
          menuIcon(context),
          Spacing().horizontalSpace(context, 0.03),
          Components()
              .addButton(context: context, title: 'Edit Project', borderRad: 20)
        ],
      ),
    ]);
  }

  Widget menuIcon(BuildContext context) => Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border.all(color: Color.fromARGB(255, 151, 150, 150), width: 1.5),
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: EdgeInsets.all(Sizes().ratioWithScrWidth(context, 0.02)),
        child: Icon(
          Icons.menu,
          size: 25,
        ),
      ));
}
