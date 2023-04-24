import 'package:flutter/material.dart';
import '../../../core/utils.dart';

class HorizListTile extends StatelessWidget {
  final double width;
  final Widget child;
  const HorizListTile({super.key, required this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Sizes().ratioWithScrWidth(context, width),
        alignment: Alignment.centerLeft,
        child: child);
  }
}
