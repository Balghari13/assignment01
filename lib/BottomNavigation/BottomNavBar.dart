import 'package:flutter/material.dart';
import 'package:task01/Drawer/drawerScreen.dart';

import '../GridViewBuilder/prac.dart';
import '../NotificationCounter/icon.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  final screens = [
    DrawerScreen(),
    IconWidget(),
    GridbuilderScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index)=>setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),
          label: 'Nootification'),
          // BottomNavigationBarItem(icon: Icon(Icons.list),
          // label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.calculate),
          label: 'Calculator'),
        ],
      ),
    );
  }
}
