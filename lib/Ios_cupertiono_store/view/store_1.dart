import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ios/Ios_cupertiono_store/provider/providerIos.dart';

class Ios_Store extends StatefulWidget {
  const Ios_Store({Key? key}) : super(key: key);

  @override
  State<Ios_Store> createState() => _Ios_StoreState();
}

class _Ios_StoreState extends State<Ios_Store> {
  dataProvide? provideF;
  dataProvide? provideT;
  @override
  Widget build(BuildContext context) {
    provideF=Provider.of<dataProvide>(context,listen: false);
    provideT=Provider.of<dataProvide>(context,listen: true);
    return CupertinoPageScaffold(navigationBar: CupertinoNavigationBar(
      leading: Center(child: Text("Cupertino Store",style: TextStyle(color: CupertinoColors.white),)),
    ),child: ListView.builder(itemBuilder:(context, index) {
      return CupertinoListTile(title: Text("${provideF!.itemList[index].name}"),
        leading: Image.asset("${provideF!.itemList[index].img}"),
        subtitle:Text("${provideF!.itemList[index].price}"),
        trailing: Icon(Icons.add,color: Colors.blue,),

      );
    },itemCount: provideF!.itemList.length,));
  }
}
