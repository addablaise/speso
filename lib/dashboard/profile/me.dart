import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../utils/colors.dart';
import '../../utils/styles/stext.dart';

class MeView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MeViewState();
  }
}

class MeViewState extends State<MeView>{
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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(160),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
              child: Text(
                'Profile',
                style: stxtFree(Colors.black87,
                    24.0,'med'),),
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 60.0,
                  child: ClipRRect(
                    child: Image.asset('assets/images/blaise.jpeg'),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10,bottom: 2),
                  child: Text(
                    'Adda Blaise',style: stxtFree(Colors.black87,18.0,'med'),),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Speso individual account',style: stxtFree(Colors.black87,16.0,'reg'),),
                ),

                Stack(
                  children: [
                    Container(
                      height: 200,width: 200,
                      decoration: BoxDecoration (
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                    ),

                    Positioned(
                      left: 6,right: 6,top: 6,bottom: 6,
                        child: Container(
                          height: 198,width: 198,
                          decoration: BoxDecoration (
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)),
                          ),
                        ),
                    ),

                    QrImage(
                      data: "addablaise",
                      version: QrVersions.auto,
                      size: 200.0,
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Scan to add me as friend',style: stxtFree(Colors.black87,16.0,'reg'),),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

}