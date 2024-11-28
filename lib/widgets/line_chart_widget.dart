import 'package:dashboard/data/line_chart_data.dart';
import 'package:dashboard/utils/colors/app_colors.dart';
import 'package:dashboard/widgets/custom_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final lineData = LineData();
    return CustomCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Steps Overview",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 20),
        AspectRatio(
          aspectRatio: 16 / 6,
          child: LineChart(
            LineChartData(
              lineTouchData: LineTouchData(
                handleBuiltInTouches: true,
              ),
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(
                rightTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return lineData.bottomList[value.toInt()] != null
                          ? SideTitleWidget(
                              axisSide: meta.axisSide,
                              child: Text(
                                lineData.bottomList[value.toInt()].toString(),
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[400]),
                              ),
                            )
                          : SizedBox();
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return lineData.leftTitle[value.toInt()] != null
                          ? SideTitleWidget(
                              axisSide: meta.axisSide,
                              child: Text(
                                lineData.leftTitle[value.toInt()].toString(),
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[400]),
                              ),
                            )
                          : SizedBox();
                    },
                  ),
                ),
              ),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
                  color: MyAppColor.selectionColor,
                  barWidth: 2.5,
                  belowBarData: BarAreaData(
                    gradient: LinearGradient(
                      colors: [
                        MyAppColor.selectionColor.withOpacity(0.5),
                        Colors.transparent
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    show: true,
                  ),
                  dotData: FlDotData(show: false),
                  spots: lineData.spots,
                ),
              ],
              minX: 0,
              maxX: 120,
              minY: -5,
              maxY: 105,
            ),
          ),
        )
      ],
    ));
  }
}
