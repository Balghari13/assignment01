import 'package:flutter/material.dart';

class Civic extends StatelessWidget {
  final List <String> Imagepath;
  Civic({Key? key, required this.Imagepath}) : super(key: key);

  //String image ='https://cache4.pakwheels.com/system/car_generation_pictures/7370/original/Cover.jpg?1677570254';

  String desc =
      'The Honda Civic (Japanese: Hepburn: Honda Shibikku) is a series of automobiles manufactured by Honda since 1972. Since 2000, the Civic has been categorized as a compact car, while previously it occupied the subcompact class.[by whom?] As of 2021, the Civic is positioned between the Honda Fit/City and Honda Accord in Honda';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Civic'),
        ),
        body: Column(
      children: [
      Image.network(Imagepath[1]),
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
