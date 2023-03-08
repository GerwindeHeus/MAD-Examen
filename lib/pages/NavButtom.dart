import 'package:flutter/material.dart';
import 'package:madexamn/pages/HomePage.dart';
import 'package:madexamn/pages/profiel.dart';
import 'package:madexamn/pages/opgeslagen.dart';
import 'package:madexamn/pages/categorieen.dart';

class NavBottom extends StatefulWidget {
  const NavBottom({super.key});

  @override
  State<NavBottom> createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  int currentIndex = 0;

  List pages = [
    const HomePage(),
    const categorieen(),
    const opgeslagen(),
    const profiel(),
  ];

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StraksNL'),
        centerTitle: true,
        elevation: 20,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.tag), label: 'Categorieen'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Opgeslagen'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profiel'),
        ],
        currentIndex: currentIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        onTap: onTapped,
      ),
    );
  }
}
