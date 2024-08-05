import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
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
            titleStyle: AppStyle.styleRegular16(context)
                .copyWith(color: activeindex == 0 ? null : Colors.white),
            radius: activeindex == 0 ? 60 : 50,
            value: 40,
            titlePositionPercentageOffset: activeindex == 0 ? 1.5 : null,
            title: activeindex == 0 ? "Design Service" : "40%",
            color: const Color(0xff208bc7),
          ),
          PieChartSectionData(
            titleStyle: AppStyle.styleRegular16(context)
                .copyWith(color: activeindex == 1 ? null : Colors.white),
            radius: activeindex == 1 ? 60 : 50,
            value: 25,
            titlePositionPercentageOffset: activeindex == 1 ? 2.2 : null,
            title: activeindex == 1 ? "Design Product" : "25%",
            color: const Color(0xff4db7f2),
          ),
          PieChartSectionData(
            titleStyle: AppStyle.styleRegular16(context)
                .copyWith(color: activeindex == 2 ? null : Colors.white),
            radius: activeindex == 2 ? 60 : 50,
            value: 20,
            titlePositionPercentageOffset: activeindex == 2 ? 1.4 : null,
            title: activeindex == 2 ? "Product Royalti" : "20%",
            color: const Color(0xff064060),
          ),
          PieChartSectionData(
            titleStyle: AppStyle.styleRegular16(context)
                .copyWith(color: activeindex == 3 ? null : Colors.white),
            radius: activeindex == 3 ? 60 : 50,
            value: 22,
            titlePositionPercentageOffset: activeindex == 3 ? 1.4 : null,
            title: activeindex == 3 ? "Other" : "22%",
            color: const Color(0xffe2decd),
          )
        ]);
  }
}
