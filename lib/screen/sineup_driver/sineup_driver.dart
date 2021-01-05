import 'package:flutter/material.dart';

import '../../responsive.dart';

class SignUpDriver extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;
  GlobalKey<FormState> keyValidate=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Form(
                key: keyValidate,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RowForSignUpDriver(),
                    Padding(
                      padding:  EdgeInsets.only(right: defaultSize*2.9),
                      child: Text(
                        'البيانات الاساسيه',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: defaultSize * 2,
                          color: Color(0xff257E27),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: defaultSize/2,
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultSize*1.5),
                      child: CustomText(
                        text: 'اسم المستخدم',
                      ),
                    ),
                    SizedBox(height: defaultSize/2,),
                    Padding(
                      padding: EdgeInsets.all(defaultSize),
                      child: CustomTextField(
                        obSecure: false,

                        textInputType: TextInputType.text,
                        hintText: 'اسم المستخدم',
                        validate: ( String value){
                          if (value.isEmpty) {
                            return 'enter your name';
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: defaultSize*2.9),
                      child: CustomText(
                        text: 'البريد الالكترونى',
                      ),
                    ),
                    SizedBox(height: defaultSize/2,),
                    Padding(
                      padding:  EdgeInsets.all(defaultSize),
                      child: CustomTextField(
                        validate: ( String value){
                          if (value.isEmpty) {
                            return 'enter your name';
                          }
                        },
                        textInputType: TextInputType.emailAddress,
                        hintText: 'البريد الالكترونى',
                        obSecure: false,

                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: defaultSize*2.9),
                      child: CustomText(
                        text: 'رقم الجوال',
                      ),
                    ),
                    SizedBox(height: defaultSize/2,),
                    CustomTextField(
                      obSecure: false,
                      validate: ( String value){
                        if (value.isEmpty) {
                          return 'enter your number';
                        }
                      },
                      textInputType: TextInputType.number,
                      hintText: 'رقم الجوال',
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: defaultSize*2.9),
                      child: CustomText(
                        text: 'الرقم السري ',
                      ),
                    ),
                    SizedBox(height: defaultSize/2,),
                    CustomTextField(
                      obSecure: true,
                      validate: ( String value){
                        if (value.isEmpty) {
                          return 'enter your password';
                        }
                      },
                      textInputType: TextInputType.text,
                      hintText: 'الرقم السرى',
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: defaultSize*2.9),
                      child: CustomText(
                        text: 'تاكيد الرقم السري ',
                      ),
                    ),
                    SizedBox(height: defaultSize/2,),
                    Padding(
                      padding:  EdgeInsets.all(defaultSize*1.5),
                      child: CustomTextField(
                        obSecure: true,
                        validate: ( String value){
                          if (value.isEmpty) {
                            return 'enter your password';
                          }
                        },
                        textInputType: TextInputType.text,
                        hintText: 'تاكيدالرقم السرى',
                      ),
                    ),
                    SizedBox(height: defaultSize,),
                    Text(
                      'بيانات السياره',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: defaultSize * 3,
                        color: Color(0xff257E27),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: defaultSize*2.9),
                      child: CustomText(
                        text: 'نوع السياره ',
                      ),
                    ),
                    SizedBox(height: defaultSize/2,),
                    Padding(
                      padding:  EdgeInsets.all(defaultSize*1.5),
                      child: CustomTextField(
                        obSecure: true,
                        validate: ( String value){
                          if (value.isEmpty) {
                            return 'enter your kind of car';
                          }
                        },
                        textInputType: TextInputType.text,
                        hintText: 'نوع السياره',
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: defaultSize*2.9),
                      child: CustomText(
                        text: 'رقم اللوحه ',
                      ),
                    ),
                    SizedBox(height: defaultSize/2,),
                    Padding(
                      padding:  EdgeInsets.all(defaultSize*1.5),
                      child: CustomTextField(
                        obSecure: true,
                        validate: ( String value){
                          if (value.isEmpty) {
                            return 'enter your number';
                          }
                        },
                        textInputType: TextInputType.number,
                        hintText: 'رقم اللوحه',
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: defaultSize*2.9),
                      child: CustomText(
                        text: 'تاكيد الرقم السري ',
                      ),
                    ),
                    SizedBox(height: defaultSize/2,),
                    Padding(
                      padding:  EdgeInsets.all(defaultSize*1.5),
                      child: CustomTextField(
                        obSecure: true,
                        validate: ( String value){
                          if (value.isEmpty) {
                            return 'enter your password';
                          }
                        },
                        textInputType: TextInputType.text,
                        hintText: 'تاكيدالرقم السرى',
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(defaultSize*1.5),
                      child: CustomText(
                        text: 'الرخصه ',
                      ),
                    ),
                    SizedBox(height: defaultSize/2,),
                    Padding(
                      padding:  EdgeInsets.all(defaultSize*1.5),
                      child: CustomTextField(
                        obSecure: true,
                        validate: ( String value){
                          if (value.isEmpty) {
                            return 'رقم الرخصه';
                          }
                        },
                        textInputType: TextInputType.number,
                        hintText: 'الرخصه',
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: defaultSize*2.9),
                      child: CustomText(
                        text: 'الهويه ',
                      ),
                    ),
                    SizedBox(height: defaultSize/2,),
                    Padding(
                      padding:  EdgeInsets.all(defaultSize*1.5),
                      child: CustomTextField(
                        obSecure: true,
                        validate: ( String value){
                          if (value.isEmpty) {
                            return 'enter your indentify';
                          }
                        },
                        textInputType: TextInputType.text,
                        hintText: 'الهويه',
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: defaultSize*2.9),
                      child: CustomText(
                        text: 'المدن ',
                      ),
                    ),
                    SizedBox(height: defaultSize/2,),
                    Padding(
                      padding:  EdgeInsets.all(defaultSize*1.5),
                      child:TextFormField(textAlign: TextAlign.right,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'enter your city';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(defaultSize * 5),
                              ),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          hintText: 'اسم المدينه',
                          hintStyle: TextStyle(
                            color: Color(0xffC1C1C1),
                            fontFamily: 'Cairo',
                            fontSize: defaultSize * 2,
                          ),
                        ),
                      )
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
                          onPressed: () {if(keyValidate.currentState.validate()){
                            print('true');
                          }},
                          child: Text(
                            'تسجيل',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: defaultSize * 2.5,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: defaultSize,)
                  ],
                ),
              ),
              Positioned(
                  top: -50,
                  left: -50,
                  child: Stack(children: [
                    Image.asset(
                      'assets/images/circle.png',
                      width: defaultSize*22,
                      height: defaultSize*22,
                    ),
                    Positioned(left: 55,bottom: 30,
                        child: Image.asset('assets/images/delivery.png',width: defaultSize*12,height: defaultSize*12,)),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}

class RowForSignUpDriver extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultSize),
      child: Row(
        children: [
          Text(
            'تسجيل كموصل',
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

  CustomTextField({this.validate, this.hintText,this.textInputType,this.obSecure});

  @override
  Widget build(BuildContext context) {
    return TextFormField(keyboardType: textInputType,
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
