// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, unnecessary_new

import 'dart:math';

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
  final String? genre;

  HomePage({required this.poids, this.genre});

  String getSvgAsset() {
    if (genre == "Homme"){
      if (poids <= 80) {
        return 'assets/svg/silhouette1.svg';
      } else if (poids > 80 && poids <= 100) {
        return 'assets/svg/silhouette2.svg';
      } else {
        return 'assets/svg/silhouette3.svg';
      }
    } else {
      if (poids <= 80) {
        return 'assets/svg/silhouette1_femme.svg';
      } else if (poids > 80 && poids <= 100) {
        return 'assets/svg/silhouette2_femme.svg';
      } else {
        return 'assets/svg/silhouette3_femme.svg';
      }
    }
  }

  int getHeart() {
    Random random = new Random.secure();
    return(random.nextInt(101));
  }

  int getEye() {
    Random random = new Random.secure();
    return(random.nextInt(101));
  }

  int getKidney() {
    Random random = new Random.secure();
    return(random.nextInt(101));
  }

  int getFeet() {
    Random random = new Random.secure();
    return(random.nextInt(101));
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
              SizedBox(height: 70),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg/Frame.svg'),
                      SizedBox(width: 20),
                      SvgPicture.asset('assets/svg/Group3.svg'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg/Frame-2.svg'),
                      SizedBox(width: 20),
                      SvgPicture.asset('assets/svg/Group4.svg'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg/Frame-3.svg'),
                      SizedBox(width: 20),
                      SvgPicture.asset('assets/svg/Group5.svg'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg/Frame-4.svg'),
                      SizedBox(width: 20),
                      SvgPicture.asset('assets/svg/Group6.svg'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 70),
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SvgPicture.asset('assets/svg/FooterHomePage.svg'),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 120),
                        SizedBox(
                          child: Text(
                            'Félicitation Robert',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: 334,
                          child: Text(
                            'Tu as été très motivée \n8 fois consécutives',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
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
            label: '+ Poids',
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
            onTap: () => print('Ajouter Poids'),
          ),
          SpeedDialChild(
            child: Icon(Icons.monitor_weight),
            backgroundColor: Color.fromRGBO(49, 100, 232, 1),
            labelBackgroundColor: Color.fromRGBO(49, 100, 232, 1),
            label: '+ Prise de sang',
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
            onTap: () => print('Ajouter Poids'),
          ),
        ],
      ),
    );
  }
}
