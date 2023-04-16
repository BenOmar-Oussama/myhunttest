import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter/material.dart' as TextStyle;
import 'package:flutter/material.dart' as color;
import 'package:charts_flutter/flutter.dart' as charts;


class StatisticsPage extends StatelessWidget {
  final List<ActivityData> data = [    ActivityData('Week 1', 10),    ActivityData('Week 2', 12),    ActivityData('Week 3', 8),    ActivityData('Week 4', 15),    ActivityData('Week 5', 18),    ActivityData('Week 6', 20),  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.Color(0xFF2C3E50),
       
      appBar: AppBar(
        elevation: 0,
        backgroundColor: color.Color(0xFF2C3E50),
        title: Text(
          'Statistics',
          style: TextStyle.TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 16),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Activity',
                    style: TextStyle.TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: charts.BarChart(
                      [
                        charts.Series<ActivityData, String>(
                          id: 'activity',
                          colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                          domainFn: (ActivityData data, _) => data.week,
                          measureFn: (ActivityData data, _) => data.challengesCompleted * data.time,
                          data: data,
                        ),
                      ],
                      animate: true,
                      vertical: false,
                      barRendererDecorator: charts.BarLabelDecorator<String>(),
                      domainAxis: charts.OrdinalAxisSpec(
                        renderSpec: charts.SmallTickRendererSpec(
                          labelRotation: 60,
                          labelStyle: TextStyleSpec(
                            color: charts.MaterialPalette.black,
                            fontSize: 14,
                          ),
                          lineStyle: charts.LineStyleSpec(
                            color: charts.MaterialPalette.black,
                          ),
                        ),
                      ),
                      primaryMeasureAxis: charts.NumericAxisSpec(
                        renderSpec: charts.GridlineRendererSpec(
                          labelStyle: TextStyleSpec(
                            color: charts.MaterialPalette.black,
                            fontSize: 14,
                          ),
                          lineStyle: charts.LineStyleSpec(
                            color: charts.MaterialPalette.gray.shade400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActivityData {
  final String week;
  final int challengesCompleted;
  final int time;

  ActivityData(this.week, this.challengesCompleted, {this.time = 1});
}
