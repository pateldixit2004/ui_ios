import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/iprovider.dart';

class Game_Screen_ios extends StatefulWidget {
  const Game_Screen_ios({Key? key}) : super(key: key);

  @override
  State<Game_Screen_ios> createState() => _Game_Screen_iosState();
}

class _Game_Screen_iosState extends State<Game_Screen_ios> {
  iprovider? providerF;
  iprovider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<iprovider>(context, listen: false);
    providerT = Provider.of<iprovider>(context, listen: true);
    return CupertinoPageScaffold(backgroundColor:CupertinoColors.white,child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text("Game",
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
      Divider(height: 10, thickness: 2, indent: 10),
      Expanded(
        child: ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  children: [
                    Text("NEW GAMES", style: TextStyle(
                        fontSize: 10, color: CupertinoColors.systemBlue)),

                  ],
                ),
                Text("${providerF!.GameList[index].name}",
                  style: TextStyle(
                      fontSize: 20, color: CupertinoColors.black),),
                SizedBox(height: 3),
                Container(
                    height: 140,
                    width: 240,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "${providerF!.GameList[index].img}"),
                            fit: BoxFit.cover
                        )
                    )
                )

              ],
            ),
          );
        },
          itemCount: providerF!.GameList.length,
          scrollDirection: Axis.horizontal,),
      ),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Discover Ar Gaming",
                style: TextStyle(fontSize: 20, color: CupertinoColors.black)),
            Text("See All", style: TextStyle(
                fontSize: 15, color: CupertinoColors.systemBlue)),
          ],
        ),
      ),
      Expanded(
        child: ListView.builder(itemBuilder: (context, index) {
          return CupertinoListTile(
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
        },itemCount: providerF!.GameList1.length,scrollDirection: Axis.vertical,),
      )
    ],));
  }
}
