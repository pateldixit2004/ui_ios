import 'package:flutter/cupertino.dart';
import 'package:ui_ios/ios_playstore/view/appscreenios.dart';
import 'package:ui_ios/ios_playstore/view/gamescreen.dart';
import 'package:ui_ios/ios_playstore/view/todayScreen.dart';

class Home_Screen_ios_play extends StatefulWidget {
  const Home_Screen_ios_play({Key? key}) : super(key: key);

  @override
  State<Home_Screen_ios_play> createState() => _Home_Screen_ios_playState();
}

class _Home_Screen_ios_playState extends State<Home_Screen_ios_play> {
  List screenList=[
    Today_Screen_ios(),
    Game_Screen_ios(),
    App_Screen_ios(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return screenList[index];
          },
        );
      },
      tabBar: CupertinoTabBar(items: [

        BottomNavigationBarItem(icon: Icon(CupertinoIcons.device_phone_portrait),label: "Today"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.rocket_fill),label: "Games"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.layers_alt_fill),label: "Apps"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.arrow_down_square_fill),label: "Updates"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "Search"),

      ]),
    );
  }
}
