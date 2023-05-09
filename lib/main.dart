import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task01/BottomNavigation/BottomNavBar.dart';
import 'Authentication/tabBar.dart';



void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',

      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MaterialApp(
        home: SplashScreen(),

      ),
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset('assets/iconf.png'),
        ),
      ),
    );
  }
}

