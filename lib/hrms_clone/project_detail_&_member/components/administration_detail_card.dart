import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../../core/utils.dart';
import '../core/components.dart';

class AdministrationDetailCard extends StatelessWidget {
  const AdministrationDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Components().detailCard(
        context: context,
        padWid: 0.07,
        padHeight: 0.04,
        alignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hospital Administration',
            style: txtStyle(size: 18, weight: FontWeight.bold),
          ),
          Spacing().verticalSpace(context, 0.008),
          fieldNameAndTaskCounts(),
          Spacing().verticalSpace(context, 0.03),
          Text(
            lorem(words: 120, paragraphs: 2),
            style: txtStyle(size: 13, height: 1.8),
          ),
        ]);
  }

  Widget fieldNameAndTaskCounts() => Row(children: [
        count(2),
        task(' open tasks, '),
        count(5),
        task(' tasks completed')
      ]);
  Widget count(int num) => Text(
        '$num',
        style: txtStyle(size: 13),
      );
  Widget task(String task) => Text(
        '$task',
        style: txtStyle(size: 13, color: Color.fromARGB(255, 167, 164, 164)),
      );
}
