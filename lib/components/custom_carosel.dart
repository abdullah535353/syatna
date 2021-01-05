import 'package:flutter/material.dart';
import 'package:syatnayaspqna/responsive.dart';
class CustomCarousel extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(defaultSize*15),
      child: Container(
        height: defaultSize*31,
        width: defaultSize*31,
        child: Stack(
          children: [
            Container(
              height: defaultSize*36,
              width: defaultSize*36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultSize*16),
                border: Border.all(width: defaultSize/1.5, color: Colors.grey),
                image: DecorationImage(
                    image: AssetImage('assets/images/slider@3x.png'),
                    fit: BoxFit.fill),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 50,
              child: Container(
                height: defaultSize*8,
                width: defaultSize*25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(defaultSize*2.5),
                        bottomLeft: Radius.circular(defaultSize*2)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: defaultSize),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: defaultSize*2),
                            child: Text(
                              ' خروف كبير 45 كيلو',
                              style: TextStyle(
                                  fontSize: defaultSize*2,
                                  color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'ر.س',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: defaultSize*1.8),
                        ),
                        Text(' 500',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Brand-Bold',
                                fontSize: defaultSize*1.8)),
                        SizedBox(
                          width: defaultSize*5,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
