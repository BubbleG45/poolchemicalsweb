import 'package:flutter/material.dart';

class Chemicals {
  double _waterTemp;
  double _pH;
  double _freeCl;
  double _totalCl;
  double _bromine;
  double _alkalinity;
  double _cya;
  double _calcium;
  String _weather;
  DateTime _dateTime;

  //<editor-fold desc="Data Methods" defaultstate="collapsed">

  Chemicals({
    double waterTemp,
    double pH,
    double freeCl,
    double totalCl,
    double bromine,
    double alkalinity,
    double cya,
    double calcium,
    String weather,
    @required DateTime dateTime,
  })  : _waterTemp = waterTemp,
        _pH = pH,
        _freeCl = freeCl,
        _totalCl = totalCl,
        _bromine = bromine,
        _alkalinity = alkalinity,
        _cya = cya,
        _calcium = calcium,
        _weather = weather,
        _dateTime = dateTime;

  Chemicals copyWith({
    double waterTemp,
    double pH,
    double freeCl,
    double totalCl,
    double bromine,
    double alkalinity,
    double cya,
    double calcium,
    String weather,
    DateTime dateTime,
  }) {
    return new Chemicals(
      waterTemp: waterTemp ?? this._waterTemp,
      pH: pH ?? this._pH,
      freeCl: freeCl ?? this._freeCl,
      totalCl: totalCl ?? this._totalCl,
      bromine: bromine ?? this._bromine,
      alkalinity: alkalinity ?? this._alkalinity,
      cya: cya ?? this._cya,
      calcium: calcium ?? this._calcium,
      weather: weather ?? this._weather,
      dateTime: dateTime ?? this._dateTime,
    );
  }

  @override
  String toString() {
    return 'Chemicals{_waterTemp: $_waterTemp, _pH: $_pH, _freeCl: $_freeCl, _totalCl: $_totalCl, _bromine: $_bromine, _alkalinity: $_alkalinity, _cya: $_cya, _calcium: $_calcium, _weather: $_weather, _dateTime: $_dateTime}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Chemicals &&
          runtimeType == other.runtimeType &&
          _waterTemp == other._waterTemp &&
          _pH == other._pH &&
          _freeCl == other._freeCl &&
          _totalCl == other._totalCl &&
          _bromine == other._bromine &&
          _alkalinity == other._alkalinity &&
          _cya == other._cya &&
          _calcium == other._calcium &&
          _weather == other._weather &&
          _dateTime == other._dateTime);

//  @override
//  int get hashCode =>
//      _waterTemp.hashCode ^
//      _pH.hashCode ^
//      _freeCl.hashCode ^
//      _totalCl.hashCode ^
//      _bromine.hashCode ^
//      _alkalinity.hashCode ^
//      _cya.hashCode ^
//      _calcium.hashCode ^
//      _weather.hashCode ^
//      _dateTime.hashCode;

  factory Chemicals.fromMap(Map<String, dynamic> map) {
    return new Chemicals(
      waterTemp: map['_waterTemp'] as double,
      pH: map['_pH'] as double,
      freeCl: map['_freeCl'] as double,
      totalCl: map['_totalCl'] as double,
      bromine: map['_bromine'] as double,
      alkalinity: map['_alkalinity'] as double,
      cya: map['_cya'] as double,
      calcium: map['_calcium'] as double,
      weather: map['_weather'] as String,
      dateTime: map['_dateTime'] as DateTime,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      '_waterTemp': this._waterTemp,
      '_pH': this._pH,
      '_freeCl': this._freeCl,
      '_totalCl': this._totalCl,
      '_bromine': this._bromine,
      '_alkalinity': this._alkalinity,
      '_cya': this._cya,
      '_calcium': this._calcium,
      '_weather': this._weather,
      '_dateTime': this._dateTime,
    } as Map<String, dynamic>;
  }

//TODO create FROMDOCUMENT method to load data from FS into the object

//</editor-fold>

//TODO create setters and getters
//TODO create firebase utilities
//TODO create clearAll method

}
