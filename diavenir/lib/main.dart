// ignore_for_file: prefer_const_constructors

import 'package:diavenir/DataInputPage.dart';
import 'package:diavenir/meteo_des_emotions.dart';
import 'package:diavenir/meteo/MotivePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => DataInputPage(),
      },
    );
  }
}