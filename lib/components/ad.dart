import 'package:flutter/material.dart';
import 'package:syatnayaspqna/responsive.dart';
class Ad extends StatelessWidget {
    @override
    double defaultSize = SizeConfig.defaultSize;

    Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultSize),
          height: defaultSize*15,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/ad@3x.png'))),
        ),
        Positioned(
            top: 20,
            left: 15,
            child: Text(
              'اعلانك هنا',
              style: TextStyle(color: Colors.pink, fontSize: defaultSize*1.2),
            ))
      ],
    );
  }
}

