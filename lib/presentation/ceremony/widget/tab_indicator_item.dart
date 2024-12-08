import 'package:flutter/material.dart';

class TabIndicatorItem extends StatelessWidget {
  const TabIndicatorItem({
    super.key,
    required this.label,
    this.width,
  });

  final String label;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final double widthDef = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width ?? (widthDef * 0.2),
      child: Tab(text: label),
    );
  }
}
