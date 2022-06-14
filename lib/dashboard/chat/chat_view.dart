import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/colors.dart';
import '../../utils/styles/stext.dart';
import '../../utils/widgets/chat_bubble.dart';

class ChatView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ChatViewState();
  }
}

class ChatViewState extends State<ChatView>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController txtMessage = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primaryColor: MyColors.appPrimaryColor,
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        backgroundColor: MyColors.pageBG,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
                  ),
                  SizedBox(width: 2,),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/blaise.jpeg"),
                    maxRadius: 18,
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Adda Blaise",
                        style: stxtFree(Colors.black87, 16.0, 'med'),),
                        Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
                      ],
                    ),
                  ),
                  IconButton(iconSize: 24, icon: Icon(Iconsax.video),
                    onPressed: () {  },),
                  IconButton(iconSize: 24, icon: Icon(Iconsax.call),
                    onPressed: () {  },),
                  IconButton(iconSize: 24, icon: Icon(Iconsax.scan),
                    onPressed: () {  },),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          color: MyColors.pageBG,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    wMessageSentCard(
                      timestamp: '12:30',
                      msg: 'Bro how far with you?\nYou still need the money?',
                    ),
                    wMessageReceivedCard(
                      timestamp: '12:30',
                      msg: 'Chairman i dey ooo?\nCan you send it today?😆',
                    ),
                    wMessageSentCard(
                      timestamp: '12:30',
                      msg: 'Sure!😀',
                    ),
                    wMoneySentCard(
                      timestamp: '15:00',
                      amount: '₦ 78,000.00',
                    ),
                    wMoneyAcceptedCard(
                      timestamp: '15:10',
                      amount: '₦ 78,000.00',
                    ),
                    wMessageReceivedCard(
                      timestamp: '12:30',
                      msg: 'Thanks chairman, you just made my night🙂',
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(0)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      IconButton(iconSize: 24, icon: Icon(Icons.add),
                        onPressed: () { print('Add file'); },),
                      Expanded(
                          child: Container(
                            // decoration: containerBoxShadow(Colors.white, 18.0),
                            child: TextField(
                              controller: txtMessage,
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 20,
                              style: stxtFree(Colors.black54, 18.0, 'reg'),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                                suffixIcon: IconButton(
                                  color: Colors.black54.withOpacity(0.5),
                                  icon: Icon(Iconsax.moneys,size: 28,),
                                  onPressed: () {
                                  },),
                                hintText: "Type Message",
                                hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none
                                ),
                                fillColor: Colors.grey.withOpacity(0.1),
                                filled: true,
                              ),
                            ),
                          )
                      ),
                      IconButton(iconSize: 24, icon: Icon(Icons.camera_alt_outlined),
                        onPressed: () {  },),
                      IconButton(iconSize: 24, icon: Icon(Icons.keyboard_voice_outlined),
                        onPressed: () {  },),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}