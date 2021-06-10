import 'package:cryptobaazi/models/coins.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Charts extends StatelessWidget {
  final Coins charc;
  const Charts({Key? key, required this.charc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      height: 410,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 200),
        child: Column(
          key: ValueKey(charc.rank),
          children: [
            SfCartesianChart(
              enableAxisAnimation: true,
              primaryXAxis: DateTimeAxis(
                //dateFormat: intl.DateFormat.Hms(),
                intervalType: DateTimeIntervalType.minutes,
                desiredIntervals: 10,
                axisLine: AxisLine(width: 2, color: Colors.white),
                majorTickLines: MajorTickLines(color: Colors.transparent),
              ),
              primaryYAxis: NumericAxis(
                //numberFormat: intl.NumberFormat('##,###.00'),
                desiredIntervals: 5,
                decimalPlaces: 2,
                axisLine: AxisLine(width: 2, color: Colors.white),
                majorTickLines: MajorTickLines(color: Colors.transparent),
              ),
              plotAreaBorderColor: Colors.white.withOpacity(0.2),
              plotAreaBorderWidth: 0.2,
            )
          ],
        ),
      ),
    );
  }
}
