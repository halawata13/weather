import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/constants/color.dart';

/// アメダス項目
class AmedasItem extends StatelessWidget {
  final String iconName;
  final String labelName;
  final String? value;
  final String? unit;

  const AmedasItem({super.key, required this.iconName, required this.labelName, required this.value, this.unit});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/weather_icons/$iconName.svg',
              semanticsLabel: 'label icon',
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 2),
            SizedBox(
              height: 20,
              child: Text(labelName, style: const TextStyle(color: colorSubText, fontSize: 12)),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Row(
          children: [
            Text(value ?? '-', style: const TextStyle(fontSize: 21)),
            const SizedBox(width: 2),
            Text(unit ?? '', style: const TextStyle(color: colorSubText, fontSize: 16)),
          ],
        ),
      ],
    );
  }
}
