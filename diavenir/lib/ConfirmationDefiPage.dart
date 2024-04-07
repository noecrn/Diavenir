// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:diavenir/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConfirmationDefiPage extends StatelessWidget {
  late final double poids;
  late final String? genre;

  ConfirmationDefiPage({required this.poids, this.genre});

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
                  MaterialPageRoute(builder: (context) => HomePage(poids: poids, genre: genre)),
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