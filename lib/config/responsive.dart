import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  const Responsive(
      {super.key, required this.mobile, this.tablet, required this.desktop});

// Static method to check if the current screen is Mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 767;

  // Static method to check if the current screen is Tablet

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width > 767;

// Static method to check if the current screen is Desktop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1201;

  @override
  Widget build(BuildContext context) {
    // Get the size of current Screen
    final Size screenSize = MediaQuery.of(context).size;
    // Check the screen width and return the appropriate width
    if (screenSize.width >= 1025) {
      return desktop;
    } else if (screenSize.width >= 768 && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
