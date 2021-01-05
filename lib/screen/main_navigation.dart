import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/20109/AndroidStudioProjects/syatnayaspqna/lib/screen/account.dart';
import 'file:///C:/Users/20109/AndroidStudioProjects/syatnayaspqna/lib/screen/main_tab.dart';
import 'file:///C:/Users/20109/AndroidStudioProjects/syatnayaspqna/lib/screen/notifications.dart';
import 'file:///C:/Users/20109/AndroidStudioProjects/syatnayaspqna/lib/screen/search.dart';

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  List<Widget> _widget = [Account(), Notifications(), Search(), MainTab()];
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widget[_page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor: Colors.transparent,
        color: Colors.green,
        items: [
          NavigationItem(
            title: 'حسابى     ',
            image: 'assets/images/user.png',
          ),
          NavigationItem(
            title: 'الاشعارات     ',
            image: 'assets/images/notifications.png',
          ),
          NavigationItem(
            title: 'بحث   ',
            image: 'assets/images/search.png',
          ),
          NavigationItem(
            title: 'الرئيسية  ',
            image: 'assets/images/home.png',
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}

class NavigationItem extends StatelessWidget {
  String title;
  String image;

  NavigationItem({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(image),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
