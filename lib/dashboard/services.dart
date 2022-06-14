import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../utils/colors.dart';
import '../utils/functions.dart';
import '../utils/styles/stext.dart';
import '../utils/widgets/account_action_btns.dart';
import '../utils/widgets/quick_service_btns.dart';
import '../utils/widgets/wallet_card.dart';

class ServiceView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ServiceState();
  }
}

class ServiceState extends State<ServiceView>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
        backgroundColor: Colors.white,
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
                    'Services',
                    style: stxtFree(Colors.black87,
                        24.0,'med'),),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 2,right: 2),
                  child: IconButton(iconSize: 28, icon: Icon(Icons.settings_outlined),
                    onPressed: () {  },),
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
              shrinkWrap: true,
              children: [

                Swiper(
                  layout: SwiperLayout.CUSTOM,
                  customLayoutOption: CustomLayoutOption(
                      startIndex: -1,
                      stateCount: 2
                  )
                    ..addRotate([
                    -0.0/180,
                    0.0,
                    0.0/180
                  ])..addScale([0.92,1], Alignment.center)
                    ..addTranslate([
                    Offset(-0.0, -20.0),
                    Offset(0.0, 0.0),
                    Offset(0.0, 20.0)
                  ]),
                  itemWidth: 400.0,
                  itemHeight: 220.0,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10,right: 10,bottom: 20,top: 10),
                      child: wWalletCard(
                        walletBalance: '₦ 4,000,000',
                        walletName: 'My Wallet',
                        walletBg: 'wbanner$index.png',
                        index: index,
                        onPressed: () { print('blaise'); },
                      ),
                    );
                  },
                  itemCount: 2,
                ),

                Padding(
                  padding: EdgeInsets.only(left: 10,right: 10, top: 10),
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                    shrinkWrap: true, // You won't see infinite size error
                    crossAxisCount: 4,
                    children: List.generate(4, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(0),
                        child: wAccActionBtn(
                          icon: walletActionIcons(index),
                          bgColor: walletActionColor(index),
                          actionLabel: walletActionLabels(index),
                          onPressed: () {  },

                        ),
                      );
                    }),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 30,right: 10),
                  child: Text(
                    'Quick Services',
                    style: stxtFree(Colors.black87,
                        20.0,'med'),),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20,right: 20, top: 10),
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                    shrinkWrap: true, // You won't see infinite size error
                    crossAxisCount: 3,
                    children: List.generate(3, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(6),
                        child: wQuickServiceBtn(
                          serviceIcon: qserviceActionIcons(index),
                          serviceLabel: qServiceActionLabels(index),
                          onPressed: () {  },
                        ),
                      );
                    }),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 30,right: 10),
                  child: Text(
                    'Refer and Earn',
                    style: stxtFree(Colors.black87,
                        20.0,'med'),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration (
                      image: DecorationImage(
                          image: AssetImage('assets/images/refercard.png'),
                          fit:BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(12)),
                    ),
                    margin: EdgeInsets.fromLTRB(2, 5, 2, 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  'Refer a Friend',
                                  style: stxtFree(Colors.white, 18.0, 'bold'),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8,top: 2,bottom: 2),
                                child: Text(
                                  'Earn Extra Cash',
                                  style: stxtFree(Colors.white, 16.0, 'med'),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8,top: 4,bottom: 4),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.all(12.0),
                                    primary: Colors.white,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  onPressed: (){
                                    Share.share(
                                        'Download Speso today',
                                      subject: "Making money move more freely, for more people,for more growth. Join the family, lets vibe!"
                                    );
                                  },
                                  child: Text(
                                    'Get Started',
                                    style: stxtFree(Colors.black54,16.0,'med'),
                                  ),
                                ),
                              ),



                              Spacer(),
                            ],
                          ),
                        ),

                        Spacer(),
                      ],
                    ),


                  )
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

}