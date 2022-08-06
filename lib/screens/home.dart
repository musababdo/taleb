
import 'package:flutter/material.dart';
import 'package:taleb/pages/page_one.dart';
import 'package:taleb/pages/profile/profile.dart';
import 'package:taleb/pages/myorder/myorder.dart';

class Home extends StatefulWidget {
  static String id='home';
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List<Widget> _pages = <Widget>[
    PageOne(),
    Myorder(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'My Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
      body: _pages.elementAt(_selectedIndex),
    );
  }
}
