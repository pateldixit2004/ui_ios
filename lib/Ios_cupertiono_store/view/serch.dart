import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ios/Ios_cupertiono_store/provider/providerIos.dart';

class Serch_Screen extends StatefulWidget {
  const Serch_Screen({Key? key}) : super(key: key);

  @override
  State<Serch_Screen> createState() => _Serch_ScreenState();
}

class _Serch_ScreenState extends State<Serch_Screen> {
  dataProvide? provideF;
  dataProvide? provideT;
  @override
  Widget build(BuildContext context) {
    provideF=Provider.of<dataProvide>(context,listen: false);
    provideT=Provider.of<dataProvide>(context,listen: true);
    return CupertinoPageScaffold(child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoTextField(
            prefix: Icon(Icons.search),
            suffix: Icon(Icons.close),
            decoration: BoxDecoration(

              color: CupertinoColors.white,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),
        ListView.builder(shrinkWrap: true,itemBuilder: (context, index) {
          return CupertinoListTile(title: Text("${provideF!.itemList[index].name}"),
              leading: Image.asset("${provideF!.itemList[index].img}"),
              subtitle:Text("${provideF!.itemList[index].price}"),
            trailing: Icon(Icons.add,color: Colors.blue,),
          );
        },itemCount: 6,)
      ],
    ));
  }
}
