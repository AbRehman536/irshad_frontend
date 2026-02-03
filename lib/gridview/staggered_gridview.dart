import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridviewDemo extends StatelessWidget {
  const StaggeredGridviewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Staggered"),
      ),
      body: StaggeredGrid.count(
          crossAxisCount: 7,
          crossAxisSpacing: 20,mainAxisSpacing: 20,
          children: [
         StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(color: Colors.red,),),
         StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(color: Colors.blue,),),
         StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(color: Colors.green,),),
         StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(color: Colors.yellow,),),
         StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(color: Colors.orange,),),
          ],
      )
    );
  }
}
