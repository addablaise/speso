import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/colors.dart';
import '../../utils/styles/stext.dart';
import 'chat_view.dart';

class ChatHomeView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ChatHomeState();
  }
}

class ChatHomeState extends State<ChatHomeView>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController txtSearchContact = TextEditingController();
  Future<String> refreshData() async {
    print('Blaise is awesome');
    return '';
  }
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
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(160),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
                  child: Text(
                    'Chats',
                    style: stxtFree(Colors.black87,
                        24.0,'med'),),
                ),
                Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 2,right: 2),
                      child: IconButton(iconSize: 28, icon: Icon(Icons.add_circle_outline),
                        onPressed: () {  },),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 2,right: 2),
                      child: IconButton(iconSize: 28, icon: Icon(Iconsax.scan),
                        onPressed: () {  },),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 2,right: 2),
                      child: IconButton(iconSize: 28, icon: Icon(Icons.person_outline_outlined),
                        onPressed: () {  },),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Container(
          color: MyColors.pageBG,
          child: RefreshIndicator(
            onRefresh: refreshData,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20,top: 18),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                            // decoration: containerBoxShadow(Colors.white, 18.0),
                            child: TextField(
                              controller: txtSearchContact,
                              style: stxtFree(Colors.black54, 18.0, 'reg'),
                              textInputAction: TextInputAction.next,
                              onChanged: (searchValue) {
                                searchValue = searchValue.toLowerCase();
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 8),

                                prefixIcon: IconButton(
                                  color: Colors.black54.withOpacity(0.5),
                                  icon: Icon(CupertinoIcons.search,size: 18,),
                                  onPressed: () {
                                  },),
                                hintText: "Search",
                                hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none
                                ),
                                fillColor: Colors.purple.withOpacity(0.1),
                                filled: true,
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                CupertinoButton(
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 24.0,
                          child: ClipRRect(
                            child: Image.asset('assets/images/blaise.jpeg'),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        title: Text('Adda Blaise',
                          style: stxtFree(Colors.black87, 16.0, 'med'),),
                        subtitle: Text('Thanks chairman, you ju...',
                          style: stxtFree(Colors.black54, 14.0, 'reg'),),
                        trailing: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: CircleAvatar(
                                maxRadius: 12,
                                backgroundColor: MyColors.appPrimaryColor,
                                child: Text(
                                    '3',
                                    style: stxtFree(Colors.white,12.0,'med')),
                              ),
                            ),
                            Text(
                                'Yesterday',
                                style: stxtFree(Colors.black54,10.0,'reg')),
                          ],
                        ),
                      ),
                    ),
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ChatView()));
                    }
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}