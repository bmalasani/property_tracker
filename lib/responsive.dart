import 'package:flutter/material.dart';
import 'package:property_track/constants.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive(
      {super.key, required this.mobile, this.tablet, required this.desktop});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < BreakPoints.small;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > BreakPoints.small &&
      MediaQuery.of(context).size.width <= BreakPoints.medium;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > BreakPoints.medium;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= BreakPoints.medium) {
      return desktop;
    } else if (size.width >= BreakPoints.small && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
