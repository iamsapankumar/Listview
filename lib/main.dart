import 'package:flutter/material.dart';

void main()=>runApp( MaterialApp(home: MyApp()));
class MyApp extends StatefulWidget{
  @override
  MyAppState createState()=>MyAppState();
}
class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return ListTile(
              onTap: (){},
               leading: Icon(Icons.wb_sunny),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text('Hello'),
            );
          },

        ),
      ),

    );
  }
}