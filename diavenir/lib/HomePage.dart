// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleBarChart(this.seriesList, {required this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList as List<charts.Series<OrdinalSales, String>>,
      animate: animate,
      vertical: false,
      primaryMeasureAxis: new charts.NumericAxisSpec(
        renderSpec: new charts.NoneRenderSpec(),
      ),
      domainAxis: new charts.OrdinalAxisSpec(
        renderSpec: new charts.NoneRenderSpec(),
      ),
    );
  }

  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2014', 5),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}

class HomePage extends StatelessWidget {
  final double poids;

  HomePage({required this.poids});

  String getSvgAsset() {
    if (poids <= 80) {
      return 'assets/svg/silhouette1.svg';
    } else if (poids > 80 && poids <= 100) {
      return 'assets/svg/silhouette2.svg';
    } else {
      return 'assets/svg/silhouette3.svg';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          width: 197,
          height: 28,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Bonjour ',
                  style: TextStyle(
                    color: Color(0xFF3064E8),
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: 'Robert',
                  style: TextStyle(
                    color: Color(0xFF3064E8),
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              Center(
                child: SvgPicture.asset('assets/svg/logo_eclair_soleil.svg'),
              ),
              SizedBox(height: 20),
              Center(
                child: SvgPicture.asset(getSvgAsset()),
              ),
              SizedBox(height: 100),
              Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/Frame.svg'),
                      SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: 50,
                          child: SimpleBarChart(
                            SimpleBarChart._createSampleData(),
                            animate: true,

                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      SvgPicture.asset('assets/svg/Frame-2.svg'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      SvgPicture.asset('assets/svg/Frame-3.svg'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      SvgPicture.asset('assets/svg/Frame-4.svg'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: Color.fromRGBO(49, 100, 232, 1),
        animatedIcon: AnimatedIcons.menu_close,
        overlayColor: Colors.white,
        overlayOpacity: 0.3,
        children: [
          SpeedDialChild(
            child: Icon(Icons.monitor_weight),
            backgroundColor: Color.fromRGBO(49, 100, 232, 1),
            labelBackgroundColor: Color.fromRGBO(49, 100, 232, 1),
            label: 'Ajouter Poids',
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
            onTap: () => print('Ajouter Poids'),
          ),
          SpeedDialChild(
            backgroundColor: Color.fromRGBO(49, 100, 232, 1),
            labelBackgroundColor: Color.fromRGBO(49, 100, 232, 1),
            child: Icon(Icons.height),
            label: 'Ajouter Taille',
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
            onTap: () => print('Ajouter Taille'),
          ),
          SpeedDialChild(
            backgroundColor: Color.fromRGBO(49, 100, 232, 1),
            labelBackgroundColor: Color.fromRGBO(49, 100, 232, 1),
            child: Icon(Icons.delete),
            label: 'Supprimer',
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
            onTap: () => print('Supprimer'),
          ),
        ],
      ),
    );
  }
}