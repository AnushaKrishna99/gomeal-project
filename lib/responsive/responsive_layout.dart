import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget desktop;

  const ResponsiveLayout({super.key, required this.mobile, required this.tab, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1250) {
          return desktop;
        } else if (constraints.maxWidth >= 650) {
          return tab;
        } else {
          return mobile;
        }
      },
    );
  }
}