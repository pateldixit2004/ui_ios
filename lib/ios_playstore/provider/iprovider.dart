import 'package:flutter/cupertino.dart';
import 'package:ui_ios/ios_playstore/modal/imodal.dart';

class iprovider extends ChangeNotifier
{

  List<imodal> todatList=[
    imodal(img: 'assets/image/img_1.png'),
    imodal(img: 'assets/image/img_2.png'),
    imodal(img: 'assets/image/img_3.png'),
    imodal(img: 'assets/image/img_4.png'),

  ];
  List<imodal> GameList=[
 imodal(img: "assets/image/img_5.png",name: "Angre bird"),
 imodal(img: "assets/image/img_6.png",name: "Subsufre"),
 imodal(img: "assets/image/img_7.png",name: "Candi crush"),
 imodal(img: "assets/image/img_8.png",name: "Pockemon"),

  ];
  List<imodal> GameList1=[
 imodal(img: "assets/image/img_5.png",name: "Angre bird",tag: 'angre bird game'),
 imodal(img: "assets/image/img_6.png",name: "Subsufre",tag: ' subsufre game'),
 imodal(img: "assets/image/img_7.png",name: "Candi crush",tag: 'candi crush game'),
 imodal(img: "assets/image/img_8.png",name: "Pockemon",tag: 'pockemon game'),

  ];
}