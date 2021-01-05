import 'package:flutter/material.dart';
import 'package:syatnayaspqna/screen/spalsh_screen/splash_screen.dart';

void main() =>runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo'
      ),
      home:Splash() ,debugShowCheckedModeBanner: false,);
  }
}
