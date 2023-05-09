import 'package:flutter/material.dart';
import 'package:task01/Authentication/form.dart';
import 'package:task01/Authentication/login.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:
      Scaffold(
          appBar: AppBar(
            title: Text('Authentication'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(text:'Sign Up'),
                Tab(text: "Log In",)
              ],
            ),
          ),
        body: TabBarView(
          children: [
            FormScreen(),
            LoginScreen(),
          ],
        ),
      ),
    );
  }
}
