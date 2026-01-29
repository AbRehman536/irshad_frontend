import 'package:flutter/material.dart';

class ListtileDemo extends StatelessWidget {
  const ListtileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: Colors.black54,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.yellow,
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue,
              ),
              title: Text("Irshad"),
              subtitle: Text("Hello, How are You ?"),
              trailing: Text("1/29/2026"),
            ),
          );
        },),
    );
  }
}
