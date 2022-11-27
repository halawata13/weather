import 'package:flutter/material.dart';

/// セクションヘッダ
class SectionHeader extends StatelessWidget {
  final String title;
  final String areaName;
  final String publishDateString;

  const SectionHeader({super.key, required this.title, required this.areaName, required this.publishDateString});

  @override
  Widget build(BuildContext context) {
    const mainStyle = TextStyle(fontSize: 16);
    const subStyle = TextStyle(fontSize: 12, color: Color.fromRGBO(100, 100, 100, 1));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: mainStyle),
              const SizedBox(height: 4),
              Text(areaName, style: subStyle),
            ]
        ),
        Text(publishDateString, style: subStyle),
      ],
    );
  }
}
