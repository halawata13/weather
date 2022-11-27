import "package:intl/intl.dart";

String formatReportDateTime(String reportDatetime) {
  final datetime = DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(reportDatetime);
  return DateFormat('M月d日H時発表').format(datetime);
}

String formatAmedasReportDateTime(String reportDatetime) {
  final datetime = DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(reportDatetime);
  return DateFormat('M月d日H時mm分').format(datetime);
}

String formatMonth1Date(String fromDate, String toDate) {
  final from = DateFormat('yyyy-MM-dd').parse(fromDate);
  final to = DateFormat('yyyy-MM-dd').parse(toDate);
  final fromString = DateFormat('M/d').format(from);
  final toString = DateFormat('M/d').format(to);

  return '$fromString - $toString';
}

String formatMonth1Desc(int index) {
  switch (index) {
    case 0:
      return '向こう１か月';
    case 1:
      return '第1週目';
    case 2:
      return '第2週目';
    case 3:
      return '第3-4週目';
    default:
      return '';
  }
}

String formatMonth3Date(String fromDate, String toDate) {
  final from = DateFormat('yyyy-MM-dd').parse(fromDate);
  final to = DateFormat('yyyy-MM-dd').parse(toDate);

  if (from.month == to.month) {
    return '${DateFormat('M').format(from)}月';
  }

  return '${DateFormat('M').format(from)}月 - ${DateFormat('M').format(to)}月';
}

String formatMonth6Date(String date, String toDate) {
  final from = DateFormat('yyyy-MM-dd').parse(date);
  final to = DateFormat('yyyy-MM-dd').parse(toDate);
  final fromString = DateFormat('M月').format(from);
  final toString = DateFormat('M月').format(to);

  return '$fromString - $toString';
}

String windDirectionLabel(int? windDirection) {
  switch (windDirection) {
    case (1): return '北北東';
    case (2): return '北東';
    case (3): return '東北東';
    case (4): return '東';
    case (5): return '東南東';
    case (6): return '南東';
    case (7): return '南南東';
    case (8): return '南';
    case (9): return '南南西';
    case (10): return '南西';
    case (11): return '西南西';
    case (12): return '西';
    case (13): return '西北西';
    case (14): return '北西';
    case (15): return '北北西';
    case (16): return '北';
    default: return '';
  }
}
