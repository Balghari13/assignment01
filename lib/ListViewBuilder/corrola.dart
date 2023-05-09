import 'package:flutter/material.dart';

class Corrola extends StatelessWidget {
  final List <String> Imagepath;
  Corrola({Key? key, required this.Imagepath}) : super(key: key);

  //String image =  'https://global.toyota/pages/news/images/2019/09/17/1300/20190917_02_02_s.jpg';

  String desc = 'The Toyota Corolla is a series of compact cars (formerly subcompact) manufactured and marketed globally by the Japanese automaker Toyota Motor Corporation.';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Corrola'),
        ),
        body: Column(
      children: [
      Image.network(Imagepath[2 ]),
      Text(desc),
      ElevatedButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text('Back')),
      ],
    ),
      ),
    );
  }
}
