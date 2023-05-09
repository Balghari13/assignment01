import 'package:flutter/material.dart';
import '../Drawer/drawerScreen.dart';
import '../ListViewBuilder/listView.dart';
import '../NotificationCounter/icon.dart';

class GridbuilderScreen extends StatelessWidget {
  const GridbuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gridbuilder Calculator'),
          leading: IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewWidget(),));
            },
          ),
          actions:[
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DrawerScreen(),));
            }, icon: Icon(Icons.logout),),
          ],

        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 var size, height,width;
 List <String> numbers = ['C','+/-',
 '%',"/",'7','8','9','x','4','5','6','-','1','2','3','+','00','0','.','='];
  @override
  Widget build(BuildContext context) {
    size= MediaQuery.of(context).size;
    height= size.height;
    width= size.width;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: height,
          //width: width*0.9,
          color: Colors.grey,

          padding: EdgeInsets.only(right: width*0.04,left: width*0.04, top: height*0.16,),
          child: GridView.builder(itemCount: numbers.length,  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 10.0
          ),itemBuilder: (BuildContext context, int index){
            return CircleAvatar(

                backgroundColor: Colors.yellow,
                child: Text(
                 '${numbers[index]}',
                style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red),
            ),

            );
          },
      ),
    ),
      ),
    );
  }
}
