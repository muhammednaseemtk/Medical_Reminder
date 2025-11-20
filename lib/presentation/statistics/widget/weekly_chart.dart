import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medical_reminder/core/theme/app_colors.dart';

class WeeklyChart extends StatelessWidget {
  final List<double> weeklyStatus = [92, 98, 75, 100, 90, 85, 100];
  final List<String> weeklyDays = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];
  WeeklyChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        color: AppColors.bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Weekly Status',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 4,),
              Text('Last 7 Days',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
              SizedBox(height: 15,),
              AspectRatio(aspectRatio: 1.5,
              child: LineChart(
                LineChartData(
                  minY: 0,
                  maxY: 100,
                  titlesData:  FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value,meta) {
                          int index = value.toInt();
                          return Text(
                            weeklyDays[index % weeklyDays.length],
                            style: TextStyle(fontSize: 12),
                          );
                        },
                        interval: 1,
                      )
                    )
                  ),
                  gridData: FlGridData(show: true),
                  borderData: FlBorderData(show: true),
                  lineBarsData: [
                    LineChartBarData(
                      spots: List.generate(weeklyStatus.length,
                      (index) => FlSpot(index.toDouble(),weeklyStatus[index]),
                      ),
                      isCurved: true,
                      color: AppColors.textColor,
                      barWidth: 3,
                      dotData: FlDotData(show: true),
                    )
                  ]
                )
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
