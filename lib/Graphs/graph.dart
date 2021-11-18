import 'package:bennett/colors.dart';
import 'package:bennett/constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class Donut extends StatefulWidget {
  Donut({required this.val1,required this.val2});
  int val1;
  int val2;
  @override
  _DonutState createState() => _DonutState();
}

class _DonutState extends State<Donut> {
  @override
  Widget build(BuildContext context) {
    return _buildElevationDoughnutChart();
  }

  /// Returns the circular charts with center elevation dughnut series.
  SfCircularChart _buildElevationDoughnutChart() {
    return SfCircularChart(
      /// It used to set the annotation on circular chart.
      annotations: <CircularChartAnnotation>[
        CircularChartAnnotation(

            radius: '5',
            widget: Container(
                child: PhysicalModel(
                  shape: BoxShape.circle,
                  elevation: 10,
                  shadowColor: Colors.black,
                  color: const Color.fromRGBO(230, 230, 230, 1),
                  child: Container(),
                ),),),
      ],

      series: _getElevationDoughnutSeries(),
    );
  }

  /// Returns the doughnut series which need to be center elevation.
  List<DoughnutSeries<ChartSampleData, String>> _getElevationDoughnutSeries() {
    final List<ChartSampleData> chartData = <ChartSampleData>[
      ChartSampleData(
          'A', widget.val1, nearlyDarkBlue),
      ChartSampleData(
          'B',  widget.val2,  Color.fromRGBO(230, 230, 230, 1))
    ];

    return <DoughnutSeries<ChartSampleData, String>>[
      DoughnutSeries<ChartSampleData, String>(
          dataSource: chartData,
          animationDuration: 0,
          xValueMapper: (ChartSampleData data, _) => data.x as String,
          yValueMapper: (ChartSampleData data, _) => data.y,
          pointColorMapper: (ChartSampleData data, _) => data.pointColor)
    ];
  }

}


class ChartSampleData {
  var x , y , pointColor;
  ChartSampleData(this.x,this.y,this.pointColor);
}