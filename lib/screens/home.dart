import 'package:flutter/material.dart';
import 'package:poolchemicalsweb/screens/history.dart';
import 'package:poolchemicalsweb/screens/pools.dart';
import 'package:poolchemicalsweb/screens/readings.dart';
import 'package:poolchemicalsweb/widgets/appbar.dart';

import '../constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final int _pageCount = 3;
  int _pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _pageIndex == 1 ? saveAppBar : customAppBar,
      bottomNavigationBar: _bottomNavigationBar(),
      body: _body(),
      backgroundColor: kBackgroundColor,
    );
  }

  Widget _body() {
    return Stack(
      children: List<Widget>.generate(_pageCount, (index) {
        return IgnorePointer(
          ignoring: index != _pageIndex,
          child: Opacity(
            opacity: _pageIndex == index ? 1.0 : 0.0,
            child: Navigator(
              onGenerateRoute: (settings) {
                return MaterialPageRoute(
                  builder: (_) => _page(index),
                  settings: settings,
                );
              },
            ),
          ),
        );
      }),
    );
  }

  Widget _page(int index) {
    switch (index) {
      case 0:
        return Pools();
      case 1:
        return Readings();
      case 2:
        return History();
    }
    throw "Invalid index $index";
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.indigo,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
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
      currentIndex: _pageIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _pageIndex = index;
        });
      },
    );
  }
}
