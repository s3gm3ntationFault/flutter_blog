import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static const int mobileSize = 650;
  static const int desktopSize = 900;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileSize;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < desktopSize &&
      MediaQuery.of(context).size.width >= mobileSize;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= desktopSize) {
          return desktop;
        } else if (constraints.maxWidth >= mobileSize) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
