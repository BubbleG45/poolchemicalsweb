import 'package:flutter/material.dart';
import 'package:poolchemicalsweb/constants.dart';

class NavBarBottom extends StatefulWidget {
  @override
  _NavBarBottomState createState() => _NavBarBottomState();
}

class _NavBarBottomState extends State<NavBarBottom> {
  int _index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kPrimaryColor,
      selectedItemColor: kPrimaryTextColor,
      unselectedItemColor: kInactiveColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.create),
          title: Text('Readings'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text('History'),
        ),
      ],
      currentIndex: _index,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _index = index;
        });
      },
    );
  }
}
