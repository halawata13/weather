import "package:intl/intl.dart";
import 'package:flutter/material.dart';

/// 天気行の日付
class ForecastDate extends StatelessWidget {
  final String dateString;
  final String? desc;

  const ForecastDate({super.key, required this.dateString, this.desc});

  String getDateLabel(DateTime date) {
    final formatter = DateFormat('M/d');
    return formatter.format(date);
  }

  String getWeekLabel(DateTime date) {
    switch (date.weekday) {
      case DateTime.monday:
        return '（月）';
      case DateTime.tuesday:
        return '（火）';
      case DateTime.wednesday:
        return '（水）';
      case DateTime.thursday:
        return '（木）';
      case DateTime.friday:
        return '（金）';
      case DateTime.saturday:
        return '（土）';
      case DateTime.sunday:
        return '（日）';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('y-M-d');
    final date = formatter.parse(dateString);
    final dateLabel = DateFormat('M/d').format(date);
    final weekLabel = getWeekLabel(date);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Text(dateLabel, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          Text(weekLabel, style: const TextStyle(fontSize: 14)),
        ]),
        Visibility(
          visible: desc != null,
          child: Container(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
                desc ?? '',
                style: const TextStyle(fontSize: 13, color: Color.fromRGBO(100, 100, 100, 1))
            ),
          ),
        ),
      ],
    );
  }
}
