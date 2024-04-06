// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset('assets/svg/logo_eclair_soleil.svg'),
            ),
            SizedBox(height: 20),
            Center(
              child: SvgPicture.asset(getSvgAsset()),
            ),
          ],
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