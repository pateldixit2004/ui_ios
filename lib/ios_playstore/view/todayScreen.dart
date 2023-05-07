import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:ui_ios/ios_playstore/provider/iprovider.dart';

class Today_Screen_ios extends StatefulWidget {
  const Today_Screen_ios({Key? key}) : super(key: key);

  @override
  State<Today_Screen_ios> createState() => _Today_Screen_iosState();
}

class _Today_Screen_iosState extends State<Today_Screen_ios> {
  iprovider? providerF;
  iprovider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF =Provider.of<iprovider>(context,listen: false);
    providerT =Provider.of<iprovider>(context,listen: true);
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
        child: Column(
      children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text("Today",
                  style: TextStyle(
                      fontSize: 30,
                      color: CupertinoColors.black,
                      fontWeight: FontWeight.bold)),
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/img_3.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30),
                  ))
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(itemBuilder:(context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 380,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("${providerF!.todatList[index].img}"),fit: BoxFit.fill)
                ),
              ),
            );

          },itemCount: providerF!.todatList.length,scrollDirection: Axis.vertical,),
        )
      ],
    ));
  }
}
