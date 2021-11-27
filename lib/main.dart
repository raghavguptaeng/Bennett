import 'package:bennett/loginScreens/loginuser.dart';
import 'package:flutter/material.dart';
import 'HomeScreens/main_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: mainScreen.id,
      routes: {
        mainScreen.id:(context)=>mainScreen()
      },
      
    );
  }
}

