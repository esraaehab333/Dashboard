import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeindex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            activeindex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              radius: activeindex == 0 ? 60 : 50,
              showTitle: false,
              value: 40,
              color: const Color(0xff208bc7)),
          PieChartSectionData(
              radius: activeindex == 1 ? 60 : 50,
              showTitle: false,
              value: 25,
              color: const Color(0xff4db7f2)),
          PieChartSectionData(
              radius: activeindex == 2 ? 60 : 50,
              showTitle: false,
              value: 20,
              color: const Color(0xff064060)),
          PieChartSectionData(
              radius: activeindex == 3 ? 60 : 50,
              showTitle: false,
              value: 22,
              color: const Color(0xffe2decd))
        ]);
  }
}
