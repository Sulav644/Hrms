import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/utils.dart';
import '../../admin_dashboard/data/detail_banner.dart';

class HorizListTile extends StatelessWidget {
  final double width;
  final Widget child;
  const HorizListTile({super.key, required this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Sizes().ratioWithScrWidth(context, width), child: child);
  }
}
