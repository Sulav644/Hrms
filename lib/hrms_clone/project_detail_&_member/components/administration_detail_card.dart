import 'package:flutter/material.dart';
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
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Aenean accumsan aliquam laoreet. Vestibulum et vulputate tellus. '
            'Suspendisse potenti. In hac habitasse platea dictumst. Vestibulum '
            'egestas eu est vitae elementum. Vivamus id sollicitudin eros, ut '
            'consequat lorem. Ut feugiat molestie tortor, eget interdum dui consequat sit amet.'
            'Suspendisse quis pretium nisl, ac consectetur velit.'
            'Nam sagittis pharetra nisl nec tempor. Nulla porta tellus eu tristique '
            'elementum. Morbi congue varius quam, sit amet imperdiet est ullamcorper '
            'quis. Nam congue consequat sapien, in volutpat ex consectetur sed. Lorem '
            'ipsum dolor sit amet, consectetur adipiscing elit. Proin fermentum mollis '
            'diam, nec congue lacus lacinia vitae. Vivamus in aliquam mauris. Orci '
            'varius natoque penatibus et magnis dis parturient montes,'
            'nascetur ridiculus mus. Integer eu elit.',
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
        task,
        style:
            txtStyle(size: 13, color: const Color.fromARGB(255, 167, 164, 164)),
      );
}
