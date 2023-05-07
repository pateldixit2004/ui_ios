
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ios/Ios_cupertiono_store/provider/providerIos.dart';
import 'package:ui_ios/Ios_cupertiono_store/view/Home_Screen.dart';
import 'package:ui_ios/ios_playstore/provider/iprovider.dart';
import 'package:ui_ios/ios_playstore/view/home_screen_ios.dart';
import 'package:ui_ios/steperUi/seteper_provider.dart';
import 'package:ui_ios/steperUi/steper_screen.dart';
import 'package:ui_ios/steper_ios/provider/stepper_provider.dart';
import 'package:ui_ios/steper_ios/view/steeper_ios.dart';


void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => steperProvidder(),),
          ChangeNotifierProvider(create: (context) => dataProvide(),),
          ChangeNotifierProvider(create: (context) => sprovider(),),
          ChangeNotifierProvider(create: (context) => iprovider(),),
        ],
        child: CupertinoApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(p0) => Home_Screen_ios_play(),
            'step':(p0) => Stepper_ios(),
            'Home':(p0) => Home_Screen(),
          },
        ),
      ));
}
// MaterialApp(
// debugShowCheckedModeBanner: false,
// routes:{
// '/':(context)=> Steper_Screen(),
// },
// )