import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Responsive extends StatefulWidget {
  Widget Mobile;

  Widget Tablet;

  Widget Desktop;

  Responsive(
      {required this.Desktop, required this.Mobile, required this.Tablet});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      if (constrainsts.maxWidth < 500) {
        return widget.Mobile;
      } else if (constrainsts.maxWidth < 1100) {
        return widget.Tablet;
      } else {
        return widget.Desktop;
      }
    });
  }
}
