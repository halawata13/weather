import 'package:flutter/material.dart';

/// 季節予報行の日付
class SeasonDate extends StatelessWidget {
  final String dateLabel;
  final String? desc;

  const SeasonDate({super.key, required this.dateLabel, this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            dateLabel,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)
        ),
        Visibility(
          visible: desc != null,
          child: Text(
              desc ?? '',
              style: const TextStyle(fontSize: 13, color: Color.fromRGBO(100, 100, 100, 1))
          ),
        ),
      ],
    );
  }
}
