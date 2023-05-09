import 'package:flutter/material.dart';
import 'package:task01/Authentication/tabBar.dart';
import '../GridViewBuilder/prac.dart';


class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRect(
                      child: Icon(Icons.person, size: 100,)
                  )
                ],
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Account'),
              leading: Icon(Icons.account_box),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text('ListView'),
              leading: Icon(Icons.list),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GridbuilderScreen()));
              },
            ),
            ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.logout),
              onTap: (){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text('Log Out'),
                    content: Text('Are you sure you want to logout?'),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TabBarScreen()));
                      }, child: Text('Yes')),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("No"))
                    ],
                  );
                });

              },
            ),

          ],
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print('click');
          },
          child: Container(

            child: InkWell(
              onTap: () {
                //print('text click');
              },
              child: Center(
                child: Text(
                  'hello',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
