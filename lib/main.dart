import 'package:flutter/material.dart';

import 'home_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
        primaryColor:const  Color(0xff59686b),
        cardColor: const Color(0xff8a8c8c),

      ),
      home:const  HomeScreen(),
    );
  }
}