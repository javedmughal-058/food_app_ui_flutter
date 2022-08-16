import 'package:flutter/material.dart';


import 'bookmark.dart';
import 'discovery.dart';
import 'home.dart';
import 'profile.dart';
import 'topfoodie.dart';

class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => main_pageState();
}

class main_pageState extends State<main_page> {
  int _currentIndex=0;
  final tabs=[
    const home(),
     const discovery(),
    const bookmark(),
    const topfoodie(),
    const profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: tabs[_currentIndex],
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            fixedColor: Colors.amber,
            backgroundColor: Color(0xFF37474F),
            iconSize: 22,
            selectedFontSize: 17,
            unselectedItemColor: Colors.black26,
            showUnselectedLabels: true,
            currentIndex: _currentIndex,
            items:const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
                label: 'Discovery',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'bookmark',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.food_bank),
                label: 'Top Foodie',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.admin_panel_settings_outlined),
                label: 'Admin',
              ),
            ],
            onTap: (index){
              setState(() {
                _currentIndex=index;
              });
            },
          ),
        ));
  }
}
