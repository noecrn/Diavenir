// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnxieuxPage extends StatefulWidget {
  @override
  State<AnxieuxPage> createState() => _AnxieuxPageState();
}

class _AnxieuxPageState extends State<AnxieuxPage> {
  double _currentSliderValue = 50;
  
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
          SizedBox(height: 120),
          SizedBox(height: 40),
          Center(
            child: SizedBox(
              height: 39,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Quel est ton niveau ',
                      style: TextStyle(
                        color: Color(0xFF3064E8),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: 'd\'anxiété ?',
                      style: TextStyle(
                        color: Color(0xFF3064E8),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/svg/anxiete_slider1.svg'),
              SizedBox(
                width: 250,
                child: Slider(
                  value: _currentSliderValue,
                  min: 0,
                  max: 100,
                  activeColor: Color(0xFF3064E8),
                  inactiveColor: Color(0xFFE5E5E5),
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
              ),
              SvgPicture.asset('assets/svg/anxiete_slider2.svg'),
            ],
          ),
          SizedBox(height: 170),
          Container(
            width: 76,
            height: 76,
            decoration: ShapeDecoration(
              color: Color(0xFF3064E8),
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(Icons.chevron_right, color: Colors.white, size: 40,),
              onPressed: () {
                // Add your code here...
                print('Button clicked!');
              },
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 290,
            height: 39,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Nouveau ',
                    style: TextStyle(
                      color: Color(0xFF3064E8),
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'défi ',
                    style: TextStyle(
                      color: Color(0xFF3064E8),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}