import 'package:flutter/material.dart';
import 'package:syatnayaspqna/responsive.dart';
class GridItem extends StatelessWidget {
  String mainTitle;
  String price;
  String image;
GridItem({this.mainTitle, this.image, this.price});
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: defaultSize/2),
      decoration: BoxDecoration(
          //borderRadius: Border,
          color: Colors.grey[100]),
      child: Stack(
        children: [
          Container(
            height: defaultSize*19,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage(image))),
            //color: Colors.blue,
          ),
          Positioned(
            bottom: 5,
            left: 20,
            child: Container(
              height: defaultSize*8,
              width: defaultSize*14.5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(defaultSize)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    mainTitle,
                    style: TextStyle(
                        color: Colors.green, fontSize: defaultSize*1.8),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('ر.س'), Text(price)],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}