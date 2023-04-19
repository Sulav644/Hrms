import 'package:flutter/material.dart';

class AppConstants {
  double appbarIconSize = 30;
}

class Navigation {
  Future<dynamic> navigateTo(BuildContext context, Widget child) =>
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => child,
      ));
}

TextStyle txtStyle({
  Color? color,
  double? size,
  FontWeight? weight,
  double? height,
  TextDecoration? underLine,
}) =>
    TextStyle(
      color: color ?? Colors.black,
      fontSize: size ?? 14,
      fontWeight: weight ?? FontWeight.normal,
      height: height ?? 1,
      decoration: underLine ?? TextDecoration.none,
    );

class Sizes {
  double scrWidth(BuildContext context) => MediaQuery.of(context).size.width;
  double scrHeight(BuildContext context) => MediaQuery.of(context).size.height;
  double ratioWithScrWidth(BuildContext context, double ratio) =>
      scrWidth(context) * ratio;
  double ratioWithScrHeight(BuildContext context, double ratio) =>
      scrHeight(context) * ratio;
}

class Spacing {
  SizedBox verticalSpace(BuildContext context, double ratio) => SizedBox(
        height: Sizes().ratioWithScrHeight(context, ratio),
      );
  SizedBox horizontalSpace(BuildContext context, double ratio) => SizedBox(
        width: Sizes().ratioWithScrWidth(context, ratio),
      );
}
