// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram/pages/account.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/reels.dart';
import 'package:instagram/pages/search.dart';
import 'package:instagram/pages/shop.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex=0;
  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  // Different pages to Nevigate
  final List<Widget>_children=[
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
    



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'account'),
        ],
      ),
    );
  }
}