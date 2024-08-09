import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_application_2/components/popup.dart';

class ObservationChart extends StatelessWidget {
  const ObservationChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 4,
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

      child: Container(
        padding: const EdgeInsets.only(left: 19, right: 16, top: 13),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 230,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My observations',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                     Text(
                      'Statistics',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {
                    showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return const BottomSheetContent(); 
              },
            );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 146,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 5,
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            (value.toInt() + 18).toString(),
                            style: const TextStyle(fontSize: 12),
                          );
                        },
                      ),
                    ),
                    leftTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  gridData: FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                  barGroups: [
                    BarChartGroupData(
                        x: 0,
                        barRods: [BarChartRodData(toY: 1, color: Colors.blue)]),
                    BarChartGroupData(
                        x: 1,
                        barRods: [BarChartRodData(toY: 2, color: Colors.blue)]),
                    BarChartGroupData(
                        x: 2,
                        barRods: [BarChartRodData(toY: 1, color: Colors.blue)]),
                    BarChartGroupData(
                        x: 3,
                        barRods: [BarChartRodData(toY: 3, color: Colors.blue)]),
                    BarChartGroupData(x: 4, barRods: [
                      BarChartRodData(toY: 0.2, color: Colors.blue)
                    ]),
                    BarChartGroupData(x: 5, barRods: [
                      BarChartRodData(toY: 1.5, color: Colors.blue)
                    ]),
                    BarChartGroupData(
                        x: 6,
                        barRods: [BarChartRodData(toY: 2, color: Colors.blue)]),
                    BarChartGroupData(
                        x: 7,
                        barRods: [BarChartRodData(toY: 4, color: Colors.blue)]),
                    BarChartGroupData(
                        x: 8,
                        barRods: [BarChartRodData(toY: 1, color: Colors.blue)]),
                    BarChartGroupData(x: 9, barRods: [
                      BarChartRodData(toY: 0.2, color: Colors.blue)
                    ]),
                    BarChartGroupData(
                        x: 10,
                        barRods: [BarChartRodData(toY: 2, color: Colors.blue)]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
