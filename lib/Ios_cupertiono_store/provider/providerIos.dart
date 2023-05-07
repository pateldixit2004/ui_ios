import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:ui_ios/Ios_cupertiono_store/Modal/dataModal.dart';

class dataProvide extends ChangeNotifier
{
  List<dataModal> itemList=[
    dataModal(name: 'Watch',price: '120',img: 'assets/image/img.png'),
    dataModal(name: 'Watch',price: '120',img: 'assets/image/img.png'),
    dataModal(name: 'Watch',price: '120',img: 'assets/image/img.png'),
    dataModal(name: 'Watch',price: '120',img: 'assets/image/img.png'),
    dataModal(name: 'Watch',price: '120',img: 'assets/image/img.png'),
    dataModal(name: 'Watch',price: '120',img: 'assets/image/img.png'),
    dataModal(name: 'Watch',price: '120',img: 'assets/image/img.png'),
    dataModal(name: 'Watch',price: '120',img: 'assets/image/img.png'),
  ];


  DateTime datatime =DateTime.now();
  void datechange(DateTime temp)
  {
    datatime =temp;
    notifyListeners();
  }

  }