import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget phone;
  final Widget web;
  const Responsive({Key? key, required this.phone, required this.web})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < 600 ? phone : web;
      },
    );
  }
}
