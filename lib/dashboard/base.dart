import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:speso/dashboard/profile/me.dart';
import 'package:speso/dashboard/qr/scan.dart';

import '../utils/colors.dart';
import '../utils/styles/stext.dart';
import 'chat/chat_home.dart';
import 'services.dart';

class AppBase extends StatefulWidget {
  int? selectedTab;
  AppBase(selectedTab){
    this.selectedTab = selectedTab;
  }
  createState() => AppBaseState(this.selectedTab);
}

class AppBaseState extends State<AppBase> {
  int? selectedTab;
  int _selectedTab = 1;
  AppBaseState(this.selectedTab);

  // final String serviceSvg = 'assets/up_arrow.svg';
  // final Widget svgIcon = SvgPicture.asset(
  //     serviceSvg,
  //     color: Colors.red,
  //     semanticsLabel: 'A red up arrow'
  // );

  @override
  void initState() {
    super.initState();
    if(selectedTab == 0){
      setState(() {
        _selectedTab = 0;
      });
    }else if(selectedTab == 1){
      setState(() {
        _selectedTab = 1;
      });
    }else if(selectedTab == 2){
      setState(() {
        _selectedTab = 2;
      });
    }else if(selectedTab == 3){
      setState(() {
        _selectedTab = 3;
      });
    }
  }

  final _pageOptionsClient  = [
    ChatHomeView(),
    QRViewExample(),
    ServiceView(),
    MeView(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptionsClient [_selectedTab],
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: MyColors.appPrimaryColor,
        strokeColor: Color(0x30040307),
        unSelectedColor: Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: Icon(Iconsax.messages_3),
            title: Text("Chat", style: stxtFree(Colors.black54, 14.0, 'reg'),),
          ),
          CustomNavigationBarItem(
            icon: Icon(Iconsax.scan),
            title: Text("Scan", style: stxtFree(Colors.black54, 14.0, 'reg')),
          ),
          CustomNavigationBarItem(
            icon: Icon(Iconsax.moneys),
            title: Text("Services", style: stxtFree(Colors.black54, 14.0, 'reg')),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            title: Text("Me", style: stxtFree(Colors.black54, 14.0, 'reg')),
          ),
        ],
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
      )


    );
  }


}