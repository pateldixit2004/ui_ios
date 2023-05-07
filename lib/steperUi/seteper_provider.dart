import 'package:flutter/cupertino.dart';

class steperProvidder extends ChangeNotifier
{

  int i=0;
  void conti()
  {
    if(i<8)
    {
      i++;
    }
    notifyListeners();
  }
  void can()
  {
    if(i>0)
    {
      i--;
    }
    notifyListeners();
  }

}