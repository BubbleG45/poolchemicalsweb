import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../constants.dart';

class WeatherDDL extends StatefulWidget {
  @override
  _WeatherDDLState createState() => _WeatherDDLState();
}

class _WeatherDDLState extends State<WeatherDDL> {
//  List<String> _list = ['Sunny', 'Partly Cloudy', 'Overcast', 'Rain'];

  List<DropdownMenuItem<String>> _list = [
    DropdownMenuItem(
      value: 'Sunny',
      child: Text('Sunny'),
    ),
    DropdownMenuItem(
      value: 'Partly Cloudy',
      child: Text('Partly Cloudy'),
    ),
    DropdownMenuItem(
      value: 'Overcast',
      child: Text('Overcast'),
    ),
    DropdownMenuItem(
      value: 'Rain',
      child: Text('Rain'),
    ),
  ];
  String _value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = null;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .4,
      child: DropdownButton<String>(
        iconEnabledColor: Colors.white,
        hint: Text(
          'Select Conditions',
          style: TextStyle(color: kPrimaryTextColor),
        ),
        underline: Container(),
        dropdownColor: kPrimaryColor,
        style: TextStyle(fontSize: 35, color: kPrimaryTextColor),
        value: _value,
        items: _list,
        onChanged: (String newValue) {
          setState(() {
            _value = newValue;
          });
        },
      ),
    );
  }
}
