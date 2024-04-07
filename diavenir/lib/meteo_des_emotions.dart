// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:diavenir/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:diavenir/meteo/MotivePage.dart';
import 'package:diavenir/meteo/FormePage.dart';
import 'package:diavenir/meteo/FatiguePage.dart';
import 'package:diavenir/meteo/AnxieuxPage.dart';

class MeteoDesEmotionsPage extends StatelessWidget {
  final double poids;
  final String? genre;
  final double taille;
  double HbA1c;
  double perimetre_abdominal;
  double LDL_cholesterol;
  double activite_physique;
  String tension_artherielle; //input: "_/_" on utilise que le premier
  double fonction_renale;
  bool tabac;
  String? tabac_type = 'Fumeur actif';
  bool alcool;
  double alcool_type;

  MeteoDesEmotionsPage({
    required this.poids,
    required this.genre,
    required this.taille,
    required this.HbA1c,
    required this.perimetre_abdominal,
    required this.LDL_cholesterol,
    required this.activite_physique,
    required this.tension_artherielle, //input: "_/_" on utilise que le premier
    required this.fonction_renale,
    required this.tabac,
    required this.tabac_type,
    required this.alcool,
    required this.alcool_type,
  });

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 70),
          Center(
            child: SizedBox(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Comment te sens-tu',
                      style: TextStyle(
                        color: Color(0xFF3064E8),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: ' aujourd’hui ?',
                      style: TextStyle(
                        color: Color(0xFF3064E8),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MotivePage(
                  poids: poids,
                  genre: genre,
                  taille: taille,
                  tension_artherielle: tension_artherielle,
                  tabac: tabac,
                  tabac_type: tabac_type,
                  alcool: alcool,
                  alcool_type: alcool_type,
                  activite_physique: activite_physique,
                  perimetre_abdominal: perimetre_abdominal,
                  fonction_renale: fonction_renale,
                  LDL_cholesterol: LDL_cholesterol,
                  HbA1c: HbA1c
                )),
              );
            },
            child: Container(
              width: 290,
              height: 63,
              decoration: BoxDecoration(
                color: Color(0xFF3064E8),
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: SvgPicture.asset('assets/svg/motive.svg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: SizedBox(
                      height: 15,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Je suis très ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'motivé',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FormePage(
                  poids: poids,
                  genre: genre,
                  taille: taille,
                  tension_artherielle: tension_artherielle,
                  tabac: tabac,
                  tabac_type: tabac_type,
                  alcool: alcool,
                  alcool_type: alcool_type,
                  activite_physique: activite_physique,
                  perimetre_abdominal: perimetre_abdominal,
                  fonction_renale: fonction_renale,
                  LDL_cholesterol: LDL_cholesterol,
                  HbA1c: HbA1c
                )),
              );
            },
            child: Container(
              width: 290,
              height: 63,
              decoration: BoxDecoration(
                color: Color(0xFF3064E8),
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: SvgPicture.asset('assets/svg/forme.svg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: SizedBox(
                      height: 15,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Je suis en ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'forme',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FatiguePage(
                  poids: poids,
                  genre: genre,
                  taille: taille,
                  tension_artherielle: tension_artherielle,
                  tabac: tabac,
                  tabac_type: tabac_type,
                  alcool: alcool,
                  alcool_type: alcool_type,
                  activite_physique: activite_physique,
                  perimetre_abdominal: perimetre_abdominal,
                  fonction_renale: fonction_renale,
                  LDL_cholesterol: LDL_cholesterol,
                  HbA1c: HbA1c
                )),
              );
            },
            child: Container(
              width: 290,
              height: 63,
              decoration: BoxDecoration(
                color: Color(0xFF3064E8),
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: SvgPicture.asset('assets/svg/fatigue.svg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: SizedBox(
                      height: 15,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Je suis ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'fatigué(e)',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnxieuxPage(
                  poids: poids,
                  genre: genre,
                  taille: taille,
                  tension_artherielle: tension_artherielle,
                  tabac: tabac,
                  tabac_type: tabac_type,
                  alcool: alcool,
                  alcool_type: alcool_type,
                  activite_physique: activite_physique,
                  perimetre_abdominal: perimetre_abdominal,
                  fonction_renale: fonction_renale,
                  LDL_cholesterol: LDL_cholesterol,
                  HbA1c: HbA1c
                )),
              );
            },
            child: Container(
              width: 290,
              height: 63,
              decoration: BoxDecoration(
                color: Color(0xFF3064E8),
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: SvgPicture.asset('assets/svg/anxieux.svg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: SizedBox(
                      height: 15,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Je suis ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'anxieux(se)',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage(
                  poids: poids,
                  genre: genre,
                  taille: taille,
                  HbA1c: HbA1c,
                  perimetre_abdominal: perimetre_abdominal,
                  LDL_cholesterol: LDL_cholesterol,
                  activite_physique: activite_physique,
                  tension_artherielle: tension_artherielle,
                  fonction_renale: fonction_renale,
                  tabac: tabac,
                  tabac_type: tabac_type,
                  alcool: alcool,
                  alcool_type: alcool_type
                )),
              );
            },
            child: Container(
              width: 290,
              height: 63,
              decoration: BoxDecoration(
                color: Color(0xFF3064E8),
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: SvgPicture.asset('assets/svg/pas_du_tout.svg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: SizedBox(
                      height: 15,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Ca ne va ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'pas du tout',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
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