// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:diavenir/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConfirmationDefiPage extends StatelessWidget {
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

  ConfirmationDefiPage({
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage(
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
              child: SvgPicture.asset('assets/svg/BullShit2.svg'),
            ),
          ],
        ),
      )
    );
  }
}