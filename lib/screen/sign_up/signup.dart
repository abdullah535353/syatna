import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:syatnayaspqna/screen/signup_user/sineup_user.dart';
import 'package:syatnayaspqna/screen/sineup_driver/sineup_driver.dart';
import 'package:syatnayaspqna/sineup_tager/signup_tager.dart';

import '../../responsive.dart';

class SineUpScreen extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  RowForNameOfSignUp(),
                  SizedBox(
                    height: defaultSize*12,
                  ),
                  Padding(
                    padding: EdgeInsets.all(defaultSize),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  child: SignUpUser()));
                        },
                        child: CustomContainer(
                          title: "تسجيل كعميل",
                          image: 'assets/images/user-1.png',
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(defaultSize),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  child: SignUpTager()));
                        },
                        child: CustomContainer(
                          title: "تسجيل كبائع",
                          image: 'assets/images/tager.png',
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(defaultSize),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: SignUpDriver()));
                        },
                        child: CustomContainer(
                          title: "تسجيل كموصل",
                          image: 'assets/images/delivery.png',
                        )),
                  )
                ],
              ),
              Positioned(
                  top: -50,
                  left: -50,
                  child: Stack(children: [
                    Image.asset(
                      'assets/images/circle.png',
                      width: 200,
                      height: 200,
                    ),
                    Positioned(left: 55,bottom: 30,
                        child: Image.asset('assets/images/logo.png',width: 120,height: 120,)),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}

class RowForNameOfSignUp extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultSize),
      child: Row(
        children: [
          Text(
            'التسجيل',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: defaultSize * 3,
              color: Color(0xff257E27),
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: defaultSize * 3,
                color: Color(0xff257E27),
              ),
              onPressed: () {}),
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;
  String image;
  String title;

  CustomContainer({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: defaultSize * 10,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(defaultSize * 6),
          ),
          color: Color(0xffFFFFFF)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: defaultSize * 2.2,
              color: Color(0xff257E27),
            ),
          ),
          SizedBox(
            width: defaultSize * 3,
          ),
          Image.asset(
            image,
            height: defaultSize * 8,
            width: defaultSize * 8,
          ),
          SizedBox(
            width: defaultSize * 3,
          ),
        ],
      ),
    );
  }
}
