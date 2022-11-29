import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_app/pages/user_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
      setState(() {
        _selectedIndex = index;
      });
  }
  List<Widget> _children = [
    UserHome(),
    UserHome(),
    UserHome(),
    UserHome()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomBar,
        selectedItemColor: Color.fromRGBO(138, 134, 226, 1),
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings), label: 'Sttings'),
        ],
      ),
    );
  }
}
