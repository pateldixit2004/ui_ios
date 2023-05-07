import 'package:flutter/cupertino.dart';
import 'package:ui_ios/Ios_cupertiono_store/view/card_Screen.dart';
import 'package:ui_ios/Ios_cupertiono_store/view/serch.dart';
import 'package:ui_ios/Ios_cupertiono_store/view/store_1.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List<Widget> screen = [
    Ios_Store(),
    Serch_Screen(),
    Card_Screen(),

  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.search)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart)),
      ]),
      tabBuilder: (context, index) {

        return screen[index];

      },
    );
  }
}
