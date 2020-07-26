import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;

class ChartsDemo_pt1 extends StatefulWidget {
  ChartsDemo_pt1({Key key}) : super(key: key);

  final String _title = "Charts Demo Pt1";

  @override
  _ChartsDemo_pt1State createState() => _ChartsDemo_pt1State();
}

class _ChartsDemo_pt1State extends State<ChartsDemo_pt1> {
  List<charts.Series> seriesList;
  static List<charts.Series<Sales, String>> _createRandomData() {
    final random = Random();
    final desktopSalesData = [
      Sales('2015', random.nextInt(100)),
      Sales('2016', random.nextInt(100)),
      Sales('2017', random.nextInt(100)),
      Sales('2018', random.nextInt(100)),
      Sales('2019', random.nextInt(100)),
    ];

    return [
      charts.Series<Sales, String>(
          id: 'Sales',
          domainFn: (Sales sales, _) => sales.year,
          measureFn: (Sales sales, _) => sales.sales,
          data: desktopSalesData)
    ];
  }

  barChart() {
    return charts.BarChart(
      seriesList,
      animate: true,
      vertical: true,
    );
  }

  @override
  void initState() {
    super.initState();
    seriesList = _createRandomData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Container(
          height: 600,
          width: 400,
          padding: EdgeInsets.all(20),
          child: barChart(),
        ),
      ),
    );
  }
}

class Sales {
  final String year;
  final int sales;

  Sales(this.year, this.sales);
}
