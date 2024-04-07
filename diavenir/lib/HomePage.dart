// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, unnecessary_new

<<<<<<< Updated upstream
import 'dart:math';

=======
import 'dart:html';
import 'dart:math';
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
  final String? genre;

  HomePage({required this.poids, this.genre});
=======
  final double taille;
  double HbA1c;
  double perimetre_abdominal;
  double LDL_cholesterol;
  double activite_physique;
  String tension_artherielle; //input: "_/_" on utilise que le premier
  double fonction_renale;
  bool tabac;
  bool alcool;

  HomePage({
    required this.poids,
    required this.taille,
    required this.HbA1c,
    required this.perimetre_abdominal,
    required this.LDL_cholesterol,
    required this.activite_physique,
    required this.tension_artherielle, //input: "_/_" on utilise que le premier
    required this.fonction_renale,
    required this.tabac,
    required this.alcool,
  });
>>>>>>> Stashed changes

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

  double getHeart() {
    double heart = 0;
    double tailleM = taille / 100;
    double imc = poids / pow(tailleM, 2);
    double tensionS = double.parse(tension_artherielle.split("/").first);

    if (HbA1c > 7) heart += 10;
    if (HbA1c > 10) heart += 10;
    imc -= 29;
    if (imc > 0) heart += 10 * ((imc / 5) + 1);
    perimetre_abdominal -= 89;
    if (perimetre_abdominal > 0) heart += 10 * ((perimetre_abdominal / 5) + 1);
    LDL_cholesterol -= 0.9;
    if (LDL_cholesterol > 0) heart += 10 * ((LDL_cholesterol / 0.1) + 1);
    tensionS -= 149;
    if (tensionS > 0) heart += 10 * ((tensionS / 10) + 1);
    if (alcool) heart += 20;
    if (tabac) heart += 30;
    if (activite_physique > 0) heart -= 10;
    if (activite_physique > 30) heart -= 10;
    if (heart < 0) heart = 0;
    if (heart > 100) heart = 100;
    return (heart);
  }

  double getEye() {
    double eye = 0;
    double tensionS = double.parse(tension_artherielle.split("/").first);
    if (HbA1c > 7) eye += 10;
    if (HbA1c > 10) eye += 10;
    if (tensionS > 0) eye += 10 * ((tensionS / 10) + 1);
    if (activite_physique > 0) eye -= 10;
    if (activite_physique > 30) eye -= 10;
    if (eye < 0) eye = 0;
    if (eye > 100) eye = 100;
    return (eye);
  }

  double getKidney() {
    double kidney = 0;
    double tensionS = double.parse(tension_artherielle.split("/").first);
    if (HbA1c > 7) kidney += 10;
    if (HbA1c > 10) kidney += 10;
    if (tensionS > 0) kidney += 10 * ((tensionS / 10) + 1);
    if (fonction_renale < 90) kidney += 25;
    if (fonction_renale < 60) kidney += 25;
    if (fonction_renale < 30) kidney += 25;
    if (fonction_renale < 15) kidney += 25;
    if (activite_physique > 0) kidney -= 10;
    if (activite_physique > 30) kidney -= 10;
    if (kidney < 0) kidney = 0;
    if (kidney > 100) kidney = 100;
    return (kidney);
  }

  double getFeet() {
    double feet = 0;
    if (HbA1c > 7) feet += 10;
    if (HbA1c > 10) feet += 10;
    if (tabac) feet += 10;
    if (activite_physique > 0) feet -= 10;
    if (activite_physique > 30) feet -= 10;
    if (feet < 0) feet = 0;
    if (feet > 100) feet = 100;
    return (feet);
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
