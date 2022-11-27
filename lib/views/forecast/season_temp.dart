import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:weather/constants/color.dart';

/// 季節行の気温
class SeasonTemp extends StatelessWidget {
  final BuiltList<String> temperature;
  
  const SeasonTemp({super.key, required this.temperature});

  bool isMax(int i) {
    final temp = int.parse(temperature[i]);

    if (
        temp < int.parse(temperature[0]) ||
        temp < int.parse(temperature[1]) ||
        temp < int.parse(temperature[2])
    ) {
      return false;
    }

    return true;
  }

  Row buildTempView() {
    TextStyle getStyle(int? i) {
      if (i == null) {
        return const TextStyle(fontSize: 24, color: Colors.grey);
      }

      if (!isMax(i)) {
        return const TextStyle(fontSize: 24, color: Colors.grey);
      }

      return const TextStyle(fontSize: 24);
    }

    return Row(children: [
      Text(temperature[0], style: getStyle(0)),
      Text(' : ', style: getStyle(null)),
      Text(temperature[1], style: getStyle(1)),
      Text(' : ', style: getStyle(null)),
      Text(temperature[2], style: getStyle(2)),
    ],);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      buildTempView(),
      Stack(children: [
        Container(
          width: 204,
          height: 6,
          decoration: BoxDecoration(
            color: isMax(1) ? colorNormal1 : colorNormal3,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        Container(
          width: 204 * double.parse(temperature[0]) / 100,
          height: 6,
          decoration: BoxDecoration(
            color: isMax(0) ? colorMin1 : colorMin3,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(3), bottomLeft: Radius.circular(3)),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 204 * double.parse(temperature[2]) / 100,
            height: 6,
            decoration: BoxDecoration(
              color: isMax(2) ? colorMax1 : colorMax3,
              borderRadius: const BorderRadius.only(topRight: Radius.circular(3), bottomRight: Radius.circular(3)),
            ),
          ),
        ),
      ],)
    ],);
  }
}
