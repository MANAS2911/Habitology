import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:flutter_auth/Screens/Tracker/date_time.dart';

class MonthlySummary extends StatelessWidget {
  final Map<DateTime, int>? datasets;
  final String startDate;

  const MonthlySummary({
    super.key,
    required this.datasets,
    required this.startDate,
  });

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, bottom: 25),
      child: HeatMap(
        startDate: createDateTimeObject(startDate),
        endDate: DateTime.now().add(Duration(days: 0)),
        datasets: datasets,
        colorMode: ColorMode.color,
        defaultColor: Color.fromARGB(255, 252, 250, 250),
        textColor: Color.fromARGB(218, 50, 55, 67),
        fontSize: 15,
        showColorTip: false,
        showText: true,
        scrollable: true,
        size: 30,
        colorsets: const {
          1: Color.fromARGB(47, 26, 123, 219),
          2: Color.fromARGB(88, 26, 123, 219),
          3: Color.fromARGB(95, 26, 123, 219),
          4: Color.fromARGB(103, 26, 123, 219),
          5: Color.fromARGB(119, 26, 123, 219),
          6: Color.fromARGB(142, 26, 123, 219),
          7: Color.fromARGB(176, 26, 123, 219),
          8: Color.fromARGB(200, 26, 123, 219),
          9: Color.fromARGB(233, 26, 123, 219),
          10: Color.fromARGB(255, 26, 121, 219),
        },
      ),
    );
  }
}