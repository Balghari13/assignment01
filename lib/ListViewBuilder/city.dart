import 'package:flutter/material.dart';

class City extends StatelessWidget {
  final List <String> Imagepath;
  City({Key? key, required this.Imagepath}) : super(key: key);
  //final List<String> Route;
  // City(this.Route);
  //String image =  'https://upload.wikimedia.org/wikipedia/commons/d/d8/2014_Honda_City_%28GM6_MY14%29_VTi_sedan_%282015-07-15%29_01.jpg';

  String desc = 'Experience the better version of power and speed with luxury cars from Honda Pakistan. ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('City'),
        ),
          body: Column(
            children: [
             Image.network(Imagepath[0]),
              Text(desc),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Back')),
            ],
          )
      ),
    );
  }
}




