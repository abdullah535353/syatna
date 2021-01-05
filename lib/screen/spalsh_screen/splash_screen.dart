import 'dart:async';

import 'package:flutter/material.dart';
import 'package:syatnayaspqna/responsive.dart';
import 'package:syatnayaspqna/screen/login/login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LogIn()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/splash.png'),
        ),
      ),
    );
  }
}
