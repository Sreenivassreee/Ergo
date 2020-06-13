import 'package:flutter/material.dart';

import 'explore.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    Explore(),
    Text('Index 1: SAVED'),
    Text('Index 2: INBOX'),
    Text('Index 2: ALERT'),
    Text('Index 2: PROFILE'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white10,
        elevation: 20.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.explore, color: Colors.black),
              title: Text('EXPLORE')),
          BottomNavigationBarItem(
              icon: Icon(Icons.save, color: Colors.black),
              title: Text('SAVED')),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, color: Colors.black),
              title: Text('INBOX')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_alert, color: Colors.black),
              title: Text('ALERT')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
              title: Text('PROFILE')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
