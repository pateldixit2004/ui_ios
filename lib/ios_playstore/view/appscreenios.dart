import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:ui_ios/ios_playstore/provider/iprovider.dart';

class App_Screen_ios extends StatefulWidget {
  const App_Screen_ios({Key? key}) : super(key: key);

  @override
  State<App_Screen_ios> createState() => _App_Screen_iosState();
}

class _App_Screen_iosState extends State<App_Screen_ios> {
  iprovider? providerF;
  iprovider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<iprovider>(context, listen: false);
    providerT = Provider.of<iprovider>(context, listen: true);
    return CupertinoPageScaffold(
        backgroundColor:CupertinoColors.white,
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Apps",
                  style: TextStyle(
                      fontSize: 30,
                      color: CupertinoColors.black,
                      fontWeight: FontWeight.bold)),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/image/img_1.png"),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(35)
                ),
              )
            ],
          ),
        ),
        Expanded
          (
          child: ListView.builder(itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Apps",style: TextStyle(fontSize: 10,color: CupertinoColors.systemBlue)),
                  ],
                ),
                SizedBox(height: 5),
                Text("${providerF!.GameList1[index].name}",style: TextStyle(fontSize: 20,color: CupertinoColors.black),),
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("${providerF!.GameList[index].img}"),fit: BoxFit.fill)
                  ),
                )
              ],
            );
          },itemCount: providerF!.GameList.length,scrollDirection: Axis.horizontal,),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("12 Great Apps for ios 14",style: TextStyle(fontSize: 20,color: CupertinoColors.black)),
              Text("See All",style: TextStyle(fontSize: 15,color: CupertinoColors.systemBlue)),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) {
            return  CupertinoListTile(
              title: Text(
                "${providerF!.GameList1[index].name}",
                style: TextStyle(color: CupertinoColors.black),),
              // subtitle: Text(
              //     "New Game", style: TextStyle(color: CupertinoColors.systemGrey3)
              //     ,),
              subtitle: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("${providerF!.GameList1[index].tag}",style: TextStyle(color: CupertinoColors.inactiveGray),),
                  CupertinoButton(child: Text("Get"), onPressed: (){

                  }),
                ],
              ),
              leading: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("${providerF!.GameList1[index].img}",),fit: BoxFit.cover
                    )
                ),

              ),);
            
          },itemCount: providerF!.GameList1.length,),
        )
      ],
    ));
  }
}
