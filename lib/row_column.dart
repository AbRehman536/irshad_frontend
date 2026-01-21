import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.red, size: 50,),
        title: Text("Row Column",style: TextStyle(
            fontSize: 35, fontWeight: FontWeight.bold, color: Colors.orange
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications, color: Colors.green, size: 30,),
          Icon(Icons.settings, color: Colors.yellow, size: 40,),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Name"),
            Text("Email"),
            Text("Password"),
            Text("Contact Number"),
            Text("Address"),
          ],
        ),
      ),
    );
  }
}
