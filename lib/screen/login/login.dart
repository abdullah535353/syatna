import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:syatnayaspqna/responsive.dart';
import 'package:syatnayaspqna/screen/sign_up/signup.dart';
import 'file:///C:/Users/20109/AndroidStudioProjects/syatnayaspqna/lib/screen/main_navigation.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  double defaultSize = SizeConfig.defaultSize;
  GlobalKey<FormState> keyValidate = GlobalKey<FormState>();
  List<String> myJobs = ['مستخدم', 'تاجر', 'سائق'];
  String selectedJob = 'مستخدم';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(defaultSize / 1.5),
                    child: Form(
                      key: keyValidate,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RowForNameOfLogIn(),
                          SizedBox(
                            height: defaultSize * 4,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: defaultSize * 2.9),
                            child: CustomText(
                              text: 'نوع الدخول ',
                            ),
                          ),
                          SizedBox(
                            height: defaultSize / 3,
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(defaultSize * 3),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: DropdownButton(
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                icon: Icon(Icons.keyboard_arrow_down_outlined),
                                isExpanded: true,
                                iconSize: defaultSize * 4,
                                style: TextStyle(
                                  color: Color(0xffC1C1C1),
                                  fontSize: defaultSize * 2,
                                  fontFamily: 'Cairo',
                                ),
                                items: myJobs.map((jobs) {
                                  return DropdownMenuItem(
                                    child: Center(
                                      child: Text(
                                        jobs,
                                        style: TextStyle(
                                          color: Color(0xffC1C1C1),
                                          fontSize: defaultSize * 2,
                                          fontFamily: 'Cairo',
                                        ),
                                      ),
                                    ),
                                    value: jobs,
                                  );
                                }).toList(),
                                value: selectedJob,
                                onChanged: (value) {
                                  setState(() {
                                    selectedJob = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: defaultSize * 2.9),
                            child: CustomText(
                              text: 'اسم المستخدم  ',
                            ),
                          ),
                          SizedBox(
                            height: defaultSize / 3,
                          ),
                          CustomTextField(
                            obSecure: false,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'enter your name';
                              }
                            },
                            textInputType: TextInputType.text,
                            hintText: 'اسم المستخدم',
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: defaultSize * 2.9),
                            child: CustomText(
                              text: 'رقم الجوال',
                            ),
                          ),
                          SizedBox(
                            height: defaultSize / 2,
                          ),
                          CustomTextField(
                            obSecure: true,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'enter your phone number';
                              }
                            },
                            textInputType: TextInputType.number,
                            hintText: 'رقم الجوال',
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: defaultSize * 2.9),
                            child: CustomText(
                              text: 'كلمه المرور ',
                            ),
                          ),
                          SizedBox(
                            height: defaultSize / 2,
                          ),
                          CustomTextField(
                            obSecure: true,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'enter your password';
                              }
                            },
                            textInputType: TextInputType.text,
                            hintText: '*******',
                          ),
                          SizedBox(
                            height: defaultSize * 1.1,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: FlatButton(
                              child: Text(
                                'نسيت كلمه السر',
                                style: TextStyle(
                                    fontSize: defaultSize * 1.5,
                                    color: Color(0xff404040),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              height: defaultSize * 6,
                              width: defaultSize * 25,
                              child: RaisedButton(
                                color: Color(0xffFFC82D),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(defaultSize * 4),
                                  ),
                                ),
                                onPressed: () {
                                  if (keyValidate.currentState.validate()) {
                                    print('welcome');
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.rotate,
                                          child: MainNavigation(),
                                        ));
                                  }
                                },
                                child: Center(
                                  child: Text(
                                    'دخول',
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: defaultSize * 2.5,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: FlatButton(
                              child: Text(
                                'تسجيل حساب جديد',
                                style: TextStyle(
                                    fontSize: defaultSize * 2,
                                    color: Color(0xff404040),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rotate,
                                    child: SineUpScreen(),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: -60,
                    left: -55,
                    child: Stack(children: [
                      Image.asset(
                        'assets/images/circle.png',
                        width: defaultSize * 22,
                        height: defaultSize * 22,
                      ),
                      Positioned(
                          left: 55,
                          bottom: 30,
                          child: Image.asset(
                            'assets/images/logo.png',
                            width: defaultSize * 13,
                            height: defaultSize * 13,
                          )),
                    ])),
              ],
            ),
          ),
        ));
  }
}

class RowForNameOfLogIn extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultSize / 2),
      child: Row(
        children: [
          Text(
            'تسجيل الدخول',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: defaultSize * 2,
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

class CustomTextField extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;
  Function validate;
  String hintText;
  TextInputType textInputType;
  bool obSecure;

  CustomTextField(
      {this.validate, this.hintText, this.textInputType, this.obSecure});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      obscureText: obSecure,
      textAlign: TextAlign.right,
      validator: validate,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(defaultSize * 5),
            ),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: Color(0xffFFFFFF),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xffC1C1C1),
          fontFamily: 'Cairo',
          fontSize: defaultSize * 2,
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;
  String text;

  CustomText({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Cairo',
        fontSize: defaultSize * 2,
        color: Color(0xff404040),
      ),
    );
  }
}

// class FormForLogIn extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double defaultSize = SizeConfig.defaultSize;
//     GlobalKey<FormState> gKey=GlobalKey<FormState>();
//
//     return Form(
//       key: gKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Text(
//             'نوع الدخول',
//             style: TextStyle(
//                 fontSize: defaultSize * 2.5,
//                 color: Color(0xff404040),
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'Cairo'),
//           ),
//           SizedBox(
//             height: defaultSize * 1.4,
//           ),
//           TextFormField(textAlign: TextAlign.right,
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'enter your name';
//               }
//               return value;
//             },
//             decoration: InputDecoration(
//               prefixIcon: IconButton(
//                 icon: Icon(Icons.keyboard_arrow_down_sharp),
//               ),
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(defaultSize * 5),
//                   ),
//                   borderSide: BorderSide.none),
//               filled: true,
//               fillColor: Color(0xffFFFFFF),
//               hintText: 'مستخدم',
//               hintStyle: TextStyle(
//                 color: Color(0xffC1C1C1),
//                 fontFamily: 'Cairo',
//                 fontSize: defaultSize * 2,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: defaultSize,
//           ),
//           Text(
//             'اسم المستخدم',
//             style: TextStyle(
//                 fontSize: defaultSize * 2,
//                 color: Color(0xff404040),
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'Cairo'),
//           ),
//           SizedBox(
//             height: defaultSize / 2,
//           ),
//           TextFormField(textAlign: TextAlign.right,
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'enter your name';
//               }
//               return value;
//             },
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(defaultSize * 5),
//                   ),
//                   borderSide: BorderSide.none),
//               filled: true,
//               fillColor: Color(0xffFFFFFF),
//               hintText: 'اسم المستخدم',
//               hintStyle: TextStyle(
//                 color: Color(0xffC1C1C1),
//                 fontFamily: 'Cairo',
//                 fontSize: defaultSize * 2,
//               ),
//             ),
//           ),
//           Text(
//             'رقم الجوال',
//             style: TextStyle(
//                 fontSize: defaultSize * 2,
//                 color: Color(0xff404040),
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'Cairo'),
//           ),
//           SizedBox(
//             height: defaultSize / 2,
//           ),
//           TextFormField(textAlign: TextAlign.right,
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'enter your name';
//               }
//               return value;
//             },
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(defaultSize * 4),
//                   ),
//                   borderSide: BorderSide.none),
//               filled: true,
//               fillColor: Color(0xffFFFFFF),
//               hintText: 'رقم الجوال',
//               hintStyle: TextStyle(
//                 color: Color(0xffC1C1C1),
//                 fontFamily: 'Cairo',
//                 fontSize: defaultSize * 2,
//               ),
//             ),
//           ),
//           Text(
//             'الرقم السرى',
//             style: TextStyle(
//                 fontSize: defaultSize * 2,
//                 color: Color(0xff404040),
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'Cairo'),
//           ),
//           SizedBox(
//             height: defaultSize / 2,
//           ),
//           TextFormField(textAlign: TextAlign.right,
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'enter your name';
//               }
//               return value;
//             },
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(defaultSize * 4),
//                   ),
//                   borderSide: BorderSide.none),
//               filled: true,
//               fillColor: Color(0xffFFFFFF),
//               hintText: 'الرقم السرى',
//               hintStyle: TextStyle(
//                 color: Color(0xffC1C1C1),
//                 fontFamily: 'Cairo',
//                 fontSize: defaultSize * 2,
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
