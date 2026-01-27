import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  TextEditingController emailController  = TextEditingController();
  TextEditingController passwordController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        Text("Welcome",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.blue),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              label: Text("Email"),
              hint: Text("abdullah@gmail.com"),
              prefixIcon: Icon(Icons.email),
              suffix: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: passwordController,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                label: Text("Password"),
                hint: Text("Numeric"),
                prefixIcon: Icon(Icons.lock),
                suffix: Icon(Icons.visibility),
               border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20),
                 borderSide: BorderSide.none
              )
            ),
          ),
        ),
        SizedBox(
          width: 335, height: 40,
          child: ElevatedButton(onPressed: (){
            if(emailController.text.isEmpty){
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Email is Empty")));
              return;
            }
            if(passwordController.text.isEmpty){
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Password is Empty")));
              return;
            }
            if(passwordController.text.length < 8){
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Password must be more than 8 digits")));
              return;
            }
          },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              )
              , child: Text("Login")),
        ),
        Row(children: [
          Text("Don't have account ?"),
          TextButton(onPressed: (){}
              , child: Text("SignUp",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),))
        ],)
      ],),
    );
  }
}
