import 'package:flutter/material.dart';

class ImagesDemo extends StatelessWidget {
  const ImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          ///network image
          Container(
            color: Colors.yellow,
            child: ClipOval(
              child: Image.network("https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=",
              width: 400, height: 300,fit: BoxFit.fill,),
            ),
          ),Container(
            color: Colors.yellow,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network("https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=",
              width: 400, height: 300,fit: BoxFit.fill,),
            ),
          ),Container(
            color: Colors.yellow,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=")
        
            ),
          ),
          ///assets image
          //Image.asset("assets/images/first.png",width: 800,height: 800,),
        ],),
      ),
    );
  }
}
