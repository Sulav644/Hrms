import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/utils.dart';

class AdminSelection extends StatelessWidget {
  final String title;
  const AdminSelection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: Sizes().scrWidth(context),
            height: Sizes().ratioWithScrHeight(context, 0.06),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    left: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black))),
            child: Padding(
              padding: EdgeInsets.only(
                  left: Sizes().ratioWithScrWidth(context, 0.04)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title),
                  Row(
                    children: [editWiget(Icons.edit), editWiget(Icons.delete)],
                  )
                ],
              ),
            )),
        Container(
          width: 4,
          height: Sizes().ratioWithScrHeight(context, 0.06),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.orange,
          ),
        ),
      ],
    );
  }

  Widget editWiget(IconData icon) => Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(100)),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Icon(
            icon,
            size: 14,
          ),
        ),
      );
}
