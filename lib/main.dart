import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Elevated Buttons"),
        ),
        body: Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:MaterialStateProperty.all<Color>(Colors.amber),
elevation: const MaterialStatePropertyAll<double>(20.0),
            ),
            onPressed: (){
              print("I am a submit");
            },
            onLongPress: (){
              print("I have been pressed hard");
            },
            child: const Text("Submit", style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
