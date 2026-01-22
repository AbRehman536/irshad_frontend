import 'package:flutter/material.dart';

class NestedRowColumn extends StatelessWidget {
  const NestedRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("POST"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          Icon(Icons.person),
          Icon(Icons.settings),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
        Text("Lorem Ipsum",style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w900, color: Colors.black
        ),),

          SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        ),

          SizedBox(height: 20,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Icon(Icons.thumb_up),
          Icon(Icons.comment),
          Icon(Icons.bookmark),
          Icon(Icons.share),
        ],),
          SizedBox(height: 20,),
        SizedBox(
          width: 300, height: 40,
          child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                elevation: 10
              )
              , child: Text("Click Me")),
        ),
          TextButton(onPressed: (){},child: Text("Click Me",style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: 20, color: Colors.blue
          ),)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_sharp, size: 30, color: Colors.red,))
      ],),
    );
  }
}
