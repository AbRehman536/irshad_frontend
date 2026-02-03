import 'package:flutter/material.dart';

class GridviewBuilderDemo extends StatelessWidget {
  const GridviewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Builder"),
      ),
      body:
        GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 80,
              crossAxisSpacing: 20, mainAxisSpacing: 20,
              mainAxisExtent: 200
            ),
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
              return Container(color: Colors.red,);
        },
            )
    );
  }
}
