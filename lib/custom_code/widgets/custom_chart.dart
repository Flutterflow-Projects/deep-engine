// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fl_chart/fl_chart.dart';

class CustomChart extends StatefulWidget {
  const CustomChart({
    super.key,
    this.width,
    this.height,
    required this.textColor,
    required this.borderColor,
  });

  final double? width;
  final double? height;
  final Color textColor;
  final Color borderColor;

  @override
  State<CustomChart> createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              LegendItem(
                  color: Color(0xFFF04438),
                  text: 'Critical',
                  textColor: widget.textColor),
              SizedBox(width: 10),
              LegendItem(
                  color: Color(0xFFEF6820),
                  text: 'High',
                  textColor: widget.textColor),
              SizedBox(width: 10),
              LegendItem(
                  color: Color(0xFFFAC515),
                  text: 'Medium',
                  textColor: widget.textColor),
              SizedBox(width: 10),
              LegendItem(
                  color: Color(0xFF5976DE),
                  text: 'Low',
                  textColor: widget.textColor),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: LineChart(
              LineChartData(
                backgroundColor: Colors.transparent,
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: true,
                  horizontalInterval: 1,
                  verticalInterval: 1,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: widget.borderColor,
                      strokeWidth: 1,
                    );
                  },
                  getDrawingVerticalLine: (value) {
                    return FlLine(
                      color: widget.borderColor,
                      strokeWidth: 1,
                    );
                  },
                ),
                titlesData: FlTitlesData(
                  show: true,
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        final labels = {
                          1: '1',
                          2: '2',
                          3: '4',
                          4: '8',
                          5: '16'
                        };
                        return Text(
                          labels[value.toInt()] ?? '',
                          style:
                              TextStyle(color: widget.textColor, fontSize: 12),
                        );
                      },
                      interval: 1,
                      reservedSize: 30,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        const days = [
                          'Mon',
                          'Tue',
                          'Wed',
                          'Thu',
                          'Fri',
                          'Sat',
                          'Sun'
                        ];
                        return Text(
                          days[value.toInt()],
                          style:
                              TextStyle(color: widget.textColor, fontSize: 12),
                        );
                      },
                      interval: 1,
                    ),
                  ),
                  topTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: widget.borderColor),
                ),
                minX: 0,
                maxX: 6,
                minY: 0,
                maxY: 5,
                lineBarsData: _getLineBarsData(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<LineChartBarData> _getLineBarsData() {
    final spotsData = [
      [
        FlSpot(0, getPosition(2)),
        FlSpot(1, getPosition(1)),
        FlSpot(2, getPosition(2)),
        FlSpot(3, getPosition(1)),
        FlSpot(4, getPosition(3)),
        FlSpot(5, getPosition(3)),
        FlSpot(6, getPosition(1)),
      ],
      [
        FlSpot(0, getPosition(3)),
        FlSpot(1, getPosition(3.8)),
        FlSpot(2, getPosition(3)),
        FlSpot(3, getPosition(4)),
        FlSpot(4, getPosition(4)),
        FlSpot(5, getPosition(3.8)),
        FlSpot(6, getPosition(7)),
      ],
      [
        FlSpot(0, getPosition(5)),
        FlSpot(1, getPosition(6)),
        FlSpot(2, getPosition(3)),
        FlSpot(3, getPosition(3)),
        FlSpot(4, getPosition(4)),
        FlSpot(5, getPosition(1.8)),
        FlSpot(6, getPosition(2)),
      ],
      [
        FlSpot(0, getPosition(5)),
        FlSpot(1, getPosition(9)),
        FlSpot(2, getPosition(8)),
        FlSpot(3, getPosition(6)),
        FlSpot(4, getPosition(4)),
        FlSpot(5, getPosition(8)),
        FlSpot(6, getPosition(7)),
      ],
    ];

    final colors = [
      Color(0xFFF04438).withOpacity(0.1),
      Color(0xFFEF6820).withOpacity(0.1),
      Color(0xFFFAC515).withOpacity(0.1),
      Color(0xFF5976DE).withOpacity(0.1),
    ];

    List<LineChartBarData> lines = [];

    for (int i = spotsData.length - 1; i >= 0; i--) {
      lines.add(
        LineChartBarData(
          spots: spotsData[i],
          isCurved: false,
          color: colors[i].withOpacity(1.0),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(show: true),
          belowBarData: BarAreaData(
            show: true,
            color: colors[i],
          ),
        ),
      );
    }

    return lines;
  }

  double getPosition(double value) {
    switch (value.toInt()) {
      case 1:
        return 1;
      case 2:
        return 2;
      case 4:
        return 3;
      case 8:
        return 4;
      case 16:
        return 5;
      default:
        if (value < 2) return 1 + (value - 1) / 1;
        if (value < 4) return 2 + (value - 2) / 2;
        if (value < 8) return 3 + (value - 4) / 4;
        if (value < 16) return 4 + (value - 8) / 8;
        return 5;
    }
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;

  const LegendItem(
      {required this.color, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(color: textColor, fontSize: 12),
        ),
      ],
    );
  }
}
