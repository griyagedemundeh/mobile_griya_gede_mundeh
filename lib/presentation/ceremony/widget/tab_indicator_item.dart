import 'package:flutter/material.dart';

class TabIndicatorItem extends StatelessWidget {
  const TabIndicatorItem({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.2,
      child: Tab(text: label),
    );
  }
}