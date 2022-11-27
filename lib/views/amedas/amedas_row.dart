import 'package:flutter/material.dart';
import 'package:weather/constants/color.dart';

/// アメダス行
class AmedasRow extends StatelessWidget {
  final List<Widget> children;
  final bool borderBottom;

  const AmedasRow({super.key, required this.children, this.borderBottom = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                color: colorBorder,
                width: borderBottom ? 1 : 0,
              ),
          ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children.map((child) => Expanded(child: child)).toList(),
      ),
    );
  }
}
