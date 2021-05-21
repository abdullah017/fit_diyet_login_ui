import 'package:doctor_consultant_mobile_app/views/doctor_detail.dart';
import 'package:doctor_consultant_mobile_app/views/doctor_list.dart';
import 'package:doctor_consultant_mobile_app/views/danisan/danisan_home.dart';
import 'package:flutter/material.dart';

class BottomBarMenu extends StatefulWidget {
  @override
  _BottomBarMenuState createState() => _BottomBarMenuState();
}

class _BottomBarMenuState extends State<BottomBarMenu> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    List<Widget> _widgetOptions = <Widget>[
      DanisanHomeView(),
      DoctorListViewDetail(),
      DoctorListView()
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
