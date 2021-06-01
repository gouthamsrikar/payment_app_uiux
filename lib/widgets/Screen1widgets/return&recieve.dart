import 'package:flutter/material.dart';
import 'package:payment_app_uiux/widgets/Screen1widgets/friendstackwidget.dart';
import 'package:pie_chart/pie_chart.dart';

class Returnyouracc extends StatefulWidget {
  @override
  _ReturnyouraccState createState() => _ReturnyouraccState();
}

class _ReturnyouraccState extends State<Returnyouracc> {
  Map<String, double> dataMap = {
    "Flutter": 93,
    "React": 4,
    "Xamarin": 2,
  };
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              'RETURNED',
              style: TextStyle(color: Colors.grey),
            ),
            Divider(color: Colors.transparent),
            Text(
              '₹38,139',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Text('of ₹42,254'),
            Divider(color: Colors.transparent),
            Text(
              'UPCOMING',
              style: TextStyle(color: Colors.grey),
            ),
            Divider(color: Colors.transparent),
            Text(
              '₹38,139',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Text('of ₹42,254'),
            Divider(color: Colors.transparent),
          ],
        ),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 1000),
                chartLegendSpacing: 5,
                chartRadius: 150,
                colorList: [Colors.greenAccent, Colors.orange, Colors.red],
                initialAngleInDegree: -90,
                chartType: ChartType.ring,
                ringStrokeWidth: 10,
                legendOptions: LegendOptions(
                  showLegendsInRow: false,
                  legendPosition: LegendPosition.right,
                  showLegends: false,
                  //  legendShape: _BoxShape.circle,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: false,
                  showChartValues: false,
                  showChartValuesInPercentage: true,
                  showChartValuesOutside: false,
                  decimalPlaces: 1,
                ),
              ),
              Column(
                children: [
                  Text(
                    '93%',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    'returned',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
