import 'package:flutter/material.dart';


class IconWidget extends StatefulWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  var size, width, height;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification icon'),

      ),
      body: Stack(
        children: [
          Center(
              child: Container(
                child: Icon(
                  Icons.notifications,
                  color: Colors.grey,
                  size: 100,
                ),
              ),
            ),

          Positioned(
            top: height * 0.4,
            left: width * 0.51,
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: height * 0.405,
            left: width * 0.514,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              child: Center(
                child: Text('$count'),
              ),
            ),
          ),
          Positioned(
            top: height * 0.52,
            left: width * 0.42,
            child:ElevatedButton(onPressed: (){
                  setState(() {
                    count++;
                  });
                }, child: Text('increment'),)
            ),
        ],
      ),


    );
  }
}


