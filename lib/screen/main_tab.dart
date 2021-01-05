import 'package:flutter/material.dart';
import 'package:syatnayaspqna/components/ad.dart';
import 'package:syatnayaspqna/components/custom_carosel.dart';
import 'package:syatnayaspqna/components/grid_item.dart';
import 'package:syatnayaspqna/responsive.dart';

class MainTab extends StatefulWidget {
  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  PageController _pageController;
  List<Widget> carosel = [CustomCarousel(), CustomCarousel()];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: SizeConfig.screenHeight * .4,
                width: double.infinity,
                child: Stack(
                  children: [
                    CustomCarousel(),
                    Positioned(
                      top: 50,
                      right: 10,
                      child: Image.asset(
                        'assets/images/menu@3x.png',
                        width: 30,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultSize*2,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Text(
                          'جميع الفئات',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: defaultSize*1.2,
                        ),
                        Image.asset('assets/images/go.png')
                      ]),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'الفئات',
                            style: TextStyle(
                                fontSize: defaultSize*1.8,

                                color: Colors.green),
                          ),
                          Image.asset(
                            'assets/images/menu.png',
                            width: defaultSize*2,
                            height: defaultSize*1.5,
                          )
                        ],
                      )
                    ]),
              ),
              Container(
                padding: EdgeInsets.zero,
                height: defaultSize*20,
                child: Category(),
              ),
              Ad(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultSize*2),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'المضاف حديثا',
                      style: TextStyle(
                          fontSize: defaultSize*1.8,
                          color: Colors.green),
                    ),
                    Image.asset(
                      'assets/images/menu.png',
                      width: defaultSize*2,
                      height: defaultSize*1.5,
                    )
                  ],
                ),
              ),
              GridView(
                padding: EdgeInsets.symmetric(horizontal: defaultSize, vertical: defaultSize/2),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .693,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                children: [
                  GridItem(image: 'assets/images/img.png',price: '500',mainTitle: 'خروف كبير',),
                  GridItem(image: 'assets/images/img.png',price: '500',mainTitle: 'خروف كبير',),
                  GridItem(image: 'assets/images/img.png',price: '500',mainTitle: 'خروف كبير',),
                  GridItem(image: 'assets/images/img.png',price: '500',mainTitle: 'خروف كبير',),
                  GridItem(image: 'assets/images/img.png',price: '500',mainTitle: 'خروف كبير',),
                  GridItem(image: 'assets/images/img.png',price: '500',mainTitle: 'خروف كبير',),
                  GridItem(image: 'assets/images/img.png',price: '500',mainTitle: 'خروف كبير',),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      children: [
        SingleCategory(
          image: 'assets/images/goat.png',
        ),
        SingleCategory(
          image: 'assets/images/cow.png',
        ),
        SingleCategory(
          image: 'assets/images/faras.png',
        ),
        SingleCategory(
          image: 'assets/images/food.png',
        ),
      ],
    );
  }
}

class SingleCategory extends StatelessWidget {
  final String image;
  final Function press;
  SingleCategory({this.image, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          //height: 200,
          // width: 200,
          decoration: BoxDecoration(
              //color: Colors.black,
              ),
          child: Image.asset(
            image,
            // width: 200,
            // height: 300,
            fit: BoxFit.fill,
          )),
    );
  }
}
