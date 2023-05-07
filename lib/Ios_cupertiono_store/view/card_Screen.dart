import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/providerIos.dart';

class Card_Screen extends StatefulWidget {
  const Card_Screen({Key? key}) : super(key: key);

  @override
  State<Card_Screen> createState() => _Card_ScreenState();
}

class _Card_ScreenState extends State<Card_Screen> {
  dataProvide? provideF;
  dataProvide? provideT;
  @override
  Widget build(BuildContext context) {
    provideF=Provider.of<dataProvide>(context,listen: false);
    provideT=Provider.of<dataProvide>(context,listen: true);
    return CupertinoPageScaffold(child: Column(
      children: [
        Text("Shopping Card",style: TextStyle(fontSize: 20,color: CupertinoColors.white),),
        SizedBox(height: 10),
        CupertinoTextField(
          prefix: Text("Name",style:TextStyle(color: CupertinoColors.opaqueSeparator)),
        ),
        CupertinoTextField(
          prefix: Text("Email",style:TextStyle(color: CupertinoColors.opaqueSeparator)),
        ),
        CupertinoTextField(
          prefix: Text("Location",style:TextStyle(color: CupertinoColors.opaqueSeparator)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            child: CupertinoDatePicker(onDateTimeChanged: (value) {

              DateTime? temp;
              temp =value;
              provideF!.datechange(temp);

            },mode: CupertinoDatePickerMode.dateAndTime,initialDateTime: DateTime.now(),),
          ),
        ),
        Container(
          height: 400,
          child: ListView.builder(itemBuilder: (context, index) {
            return Container(
              height: 80,
              width: 300,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            // color: CupertinoColors.destructiveRed,
                            image: DecorationImage(image: AssetImage("${provideT!.itemList[index].img}"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: 8,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${provideT!.itemList[index].name}", style: TextStyle(fontSize: 10, color: CupertinoColors.white),),
                          Text("${provideT!.itemList[index].price}", style: TextStyle(fontSize: 10, color: CupertinoColors.white),),
                        ],),
                      Spacer(),
                      Text("\$ ${provideT!.itemList[index].price}"),
                    ],
                  )
                ],

              ),
            );

          },itemCount: provideF!.itemList.length,),
        )

      ],
    ));
  }
}
