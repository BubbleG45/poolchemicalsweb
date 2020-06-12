import 'package:flutter/material.dart';

import '../../constants.dart';

class SliderLabel extends StatelessWidget {
  const SliderLabel({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '$text',
          style: TextStyle(color: kPrimaryTextColor),
        ),
      ),
    );
  }
}
