import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speso/utils/colors.dart';

import '../../utils/styles/stext.dart';

class QRPayView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return QRPayViewState();
  }
}

class QRPayViewState extends State<QRPayView>{
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
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
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
                  Padding(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    child: Text(
                      'Payment Details',
                      style: stxtFree(Colors.black87,
                          24.0,'med'),),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  height: 180,
                  decoration: BoxDecoration (
                    image: DecorationImage(
                      image: AssetImage('assets/images/qrpaybg.png'),
                        fit:BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(12)),
                  ),
                  margin: EdgeInsets.fromLTRB(2, 5, 2, 5),
                  child: CupertinoButton(
                      padding: EdgeInsets.only(left: 6),
                      onPressed: (){},
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Spacer(),
                                Text(
                                  'Total Charge',
                                  style: stxtFree(Colors.white, 18.0, 'med'),),
                                Text(
                                  '₦ 25,000',
                                  style: stxtFree(Colors.white, 30.0, 'bold'),),
                                Text(
                                  'Payment to Toyota Ghana Ltd',
                                  style: stxtFree(Colors.white, 18.0, 'med'),),
                                Spacer(),
                              ],
                            ),
                          ),

                          Spacer(),
                        ],
                      )
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: ExpansionTile(
                  initiallyExpanded: true,
                  title: Text(
                    'Details',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Oil Change: ₦ 9,000',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'AC Filter: ₦ 15,000',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Tax: ₦ 1,000',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration (
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(0)),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: (){ print('Pay fee');},
                child: Text(
                  'Pay Fee',
                  style: stxtFree(Colors.white,16.0,'med'),
                ),
              ),
            ),
          )
        ),
      ),
    );
  }

}