import 'package:flutter/material.dart';
import 'package:poolchemicalsweb/util/custom_slider.dart';

class SliderWidget extends StatefulWidget {
  final double sliderHeight;
  final double min;
  final double max;
  final fullWidth;
  final int divisions;
  final Color startColor;
  final Color endColor;
  final Color textColor;
  final Color indicatorColor;
  final double startGood;
  final double endGood;

  SliderWidget({
    this.sliderHeight = 48,
    this.max = 10,
    this.min = 0,
    this.fullWidth = false,
    this.divisions,
    this.startColor = const Color(0xFF00c6ff),
    this.endColor = const Color(0xFF0072ff),
    this.textColor = const Color(0xffffffff),
    this.indicatorColor = const Color(0xffd32f2f),
    this.startGood = 0,
    this.endGood = 0,
  });

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    double paddingFactor = .2;

    if (this.widget.fullWidth) paddingFactor = .3;

    return Container(
      width: this.widget.fullWidth
          ? double.infinity
          : (this.widget.sliderHeight) * 5.5,
      height: (this.widget.sliderHeight),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.all(
          Radius.circular((this.widget.sliderHeight * .4)),
        ),
        gradient: new LinearGradient(
            colors: [
              this.widget.startColor,
              this.widget.endColor,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 1.00),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(this.widget.sliderHeight * paddingFactor,
            2, this.widget.sliderHeight * paddingFactor, 2),
        child: Row(
          children: <Widget>[
            Text(
              this.widget.min.toStringAsFixed(0),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: this.widget.sliderHeight * .3,
                fontWeight: FontWeight.w700,
                color: this.widget.textColor,
              ),
            ),
            SizedBox(
              width: this.widget.sliderHeight * .1,
            ),
            Expanded(
              child: Center(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.deepOrange.withOpacity(1),
                    inactiveTrackColor: Colors.orange.withOpacity(.5),
                    trackHeight: 4.0,
                    thumbShape: CustomSliderThumbCircle(
                      thumbRadius: this.widget.sliderHeight * .4,
                      min: this.widget.min,
                      max: this.widget.max,
                    ),
                    overlayColor: Colors.white.withOpacity(.4),
                    valueIndicatorColor:
                        _value >= widget.startGood && _value < widget.endGood
                            ? Colors.lightGreen
                            : this.widget.indicatorColor,
                    showValueIndicator: ShowValueIndicator.always,
                    valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                    activeTickMarkColor: Colors.white.withOpacity(0),
                    inactiveTickMarkColor: Colors.red.withOpacity(0),
                    valueIndicatorTextStyle: TextStyle(
                      fontSize: this.widget.sliderHeight * .5,
                      color: Colors.white,
                    ),
                  ),
                  child: Slider(
                      value:
                          _value < this.widget.min || _value > this.widget.max
                              ? this.widget.min
                              : _value,
                      label: '$_value',
                      min: this.widget.min,
                      max: this.widget.max,
                      divisions: this.widget.divisions,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
              ),
            ),
            SizedBox(
              width: this.widget.sliderHeight * .1,
            ),
            Text(
              this.widget.max.toStringAsFixed(0),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: this.widget.sliderHeight * .3,
                fontWeight: FontWeight.w700,
                color: this.widget.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
