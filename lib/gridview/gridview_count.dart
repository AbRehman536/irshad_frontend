import 'package:flutter/material.dart';

class GridviewCountDemo extends StatelessWidget {
  const GridviewCountDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Count"),
      ),
      body: GridView.count(
          crossAxisCount: 3,
        mainAxisSpacing: 10,crossAxisSpacing: 10,
        children: [
          Container(color: Colors.red,child: Column(children: [
            Text("Red"),
            Text("Red"),
            Text("Red"),
            Text("Red"),
            Text("Red"),
            Text("Red"),
          ],),),
          Container(color: Colors.green,),
          Container(color: Colors.blue,),
          Container(color: Colors.yellow,),
          Container(color: Colors.orange,),
        ],
      ),
    );
  }
}
