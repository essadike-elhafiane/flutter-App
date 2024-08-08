import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ProgressChart extends StatelessWidget {
  const ProgressChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 40.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        // padding: const EdgeInsets.all(2.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 217,
        child: Padding(
          padding: const EdgeInsets.only(left: 19, right: 16, top: 13),
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
                        'Progress',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito'),
                      ),
                      Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                            fontFamily: 'Nunito'),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
              // const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    height: 150,
                    child: PieChart(
                      PieChartData(
                        sectionsSpace: 2,
                        centerSpaceRadius: 40,
                        centerSpaceColor: Colors.white,
                        sections: [
                          PieChartSectionData(
                            color: Colors.blue,
                            value: 40,
                            title: '',
                            radius: 30,
                          ),
                          PieChartSectionData(
                            color: Colors.amber,
                            value: 30,
                            title: '',
                            radius: 30,
                          ),
                          PieChartSectionData(
                            color: Colors.green,
                            value: 20,
                            title: '',
                            radius: 30,
                          ),
                          PieChartSectionData(
                            color: const Color(0xFF616161),
                            value: 10,
                            title: '',
                            radius: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildLegendItem('Pending', Colors.blue),
                      const SizedBox(height: 8),
                      _buildLegendItem('Progress', Colors.amber),
                      const SizedBox(height: 8),
                      _buildLegendItem('Resolved', Colors.green),
                      const SizedBox(height: 8),
                      _buildLegendItem('Closed', const Color(0xFF616161)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLegendItem(String label, Color color) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(width: 8),
        Text(label, style: const TextStyle(fontSize: 12, fontFamily: 'Nunito')),
      ],
    );
  }
}
