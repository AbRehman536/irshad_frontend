import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.red, size: 50,),
        title: Text("App Bar",style: TextStyle(
          fontSize: 35, fontWeight: FontWeight.bold, color: Colors.orange
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications, color: Colors.green, size: 30,),
          Icon(Icons.settings, color: Colors.yellow, size: 40,),
        ],
      ),
    );
  }
}
