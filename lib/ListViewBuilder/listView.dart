import 'package:flutter/material.dart';

import 'city.dart';
import 'civic.dart';
import 'corrola.dart';


class ListViewWidget extends StatefulWidget {
  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  List<String> Cars = ['city', 'civic', 'corrola'];

  List<String> Imagepath = [
    'https://upload.wikimedia.org/wikipedia/commons/d/d8/2014_Honda_City_%28GM6_MY14%29_VTi_sedan_%282015-07-15%29_01.jpg',
    'https://cache4.pakwheels.com/system/car_generation_pictures/7370/original/Cover.jpg?1677570254',
    'https://global.toyota/pages/news/images/2019/09/17/1300/20190917_02_02_s.jpg'
  ];

  List<int> Price = [10, 20, 15];

  //List<dynamic> Route = [City(), Civic(), Corrola()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'List Title',
      home: Scaffold(
          appBar: AppBar(
            title: Text('List Title'),
          ),
          body: Column(
            children: [
              ListView.builder(
                  itemCount: Cars.length,
                  shrinkWrap: true,
                  primary: true,
                  itemBuilder: (context, int index) {
                    return Card(
                      child: ListTile(
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    City(Imagepath: Imagepath),
                              ),
                            );
                          }
                          else if(index==1){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Civic(Imagepath: Imagepath,),));
                          }else if(index==2){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Corrola(Imagepath: Imagepath),),);
                          }

                        },
                        leading: Image.network(Imagepath[index].toString()),
                        title: Text(Cars[index].toString()),
                        subtitle: Text(Price[index].toString()),
                      ),
                    );
                  },
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Back')),
            ],
          )),
    );
  }
}
