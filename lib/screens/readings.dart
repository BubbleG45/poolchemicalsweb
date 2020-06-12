//add new readings

import 'package:flutter/material.dart';
import 'package:poolchemicalsweb/widgets/readings/chem_label.dart';
import 'package:poolchemicalsweb/widgets/readings/round_slider.dart';
import 'package:poolchemicalsweb/widgets/readings/weather_ddl.dart';

class Readings extends StatefulWidget {
  @override
  _ReadingsState createState() => _ReadingsState();
}

class _ReadingsState extends State<Readings> {
  double _value = 7.5;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: ListView(
          children: [
            SliderLabel(text: 'Water Temperature:'),
            SliderWidget(
              max: 110,
              min: 50,
              divisions: 60,
              fullWidth: true,
              startColor: Color(0xff1565c0),
              endColor: Color(0xffff5722),
              startGood: 83,
              endGood: 88,
            ),
            SizedBox(height: 30),
            SliderLabel(text: 'pH:'),
            SliderWidget(
              max: 8,
              min: 7,
              sliderHeight: 50,
              divisions: 10,
              fullWidth: true,
              startColor: Colors.deepPurple,
              endColor: Colors.deepOrange,
              startGood: 7.4,
              endGood: 7.6,
//                  textColor: Colors.black,
            ),
            SizedBox(height: 30),
            SliderLabel(text: 'Free Chlorine:'),
            SliderWidget(
              max: 20,
              min: 0,
              divisions: 40,
              fullWidth: true,
              startColor: Color(0xffff8a80),
              endColor: Color(0xffc2185b),
              startGood: 1,
              endGood: 3,
            ),
            SizedBox(height: 30),
            SliderLabel(text: 'Total Chlorine:'),
            SliderWidget(
              max: 20,
              min: 0,
              divisions: 40,
              fullWidth: true,
              startColor: Color(0xffb388ff),
              endColor: Color(0xffc2185b),
              startGood: 1,
              endGood: 3,
            ),
            SizedBox(height: 30),
            SliderLabel(text: 'Bromine:'),
            SliderWidget(
              max: 40,
              min: 0,
              divisions: 40,
              fullWidth: true,
              startColor: Color(0xff80cbc4),
              endColor: Color(0xff3f51b5),
              startGood: 3,
              endGood: 6,
            ),
            SizedBox(height: 30),
            SliderLabel(text: 'Alkalinity:'),
            SliderWidget(
              max: 240,
              min: 0,
              divisions: 24,
              fullWidth: true,
              startColor: Color(0xff536dfe),
              endColor: Color(0xff1b5e20),
              startGood: 80,
              endGood: 140,
            ),
            SizedBox(height: 30),
            SliderLabel(text: 'Cyanuric Acid:'),
            SliderWidget(
              max: 240,
              min: 0,
              divisions: 24,
              fullWidth: true,
              startColor: Color(0xff1de9b6),
              endColor: Color(0xff00796b),
              startGood: 25,
              endGood: 50,
            ),
            SizedBox(height: 30),
            SliderLabel(text: 'Calcium Hardness:'),
            SliderWidget(
              max: 1000,
              min: 0,
              divisions: 100,
              fullWidth: true,
              startColor: Color(0xffffd740),
              endColor: Color(0xffffa000),
              startGood: 200,
              endGood: 400,
            ),
            SizedBox(height: 30),
            SliderLabel(text: 'Weather:'),
            WeatherDDL(),
          ],
        ),
      ),
    );
  }
}
