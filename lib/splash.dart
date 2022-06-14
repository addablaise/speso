import 'package:flutter/material.dart';
import 'package:speso/utils/colors.dart';
import 'package:speso/utils/styles/stext.dart';

import 'dashboard/base.dart';

class SplashView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashView>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => AppBase(2)));
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage("assets/images/splash_bg.jpg"), fit: BoxFit.cover),
        // ),
        color: MyColors.appPrimaryColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                width: 100,height: 100,
                image: AssetImage('assets/images/speso_app_w.png'),
              ),
              Text(
                'A better way to pay & get paid',
                style: stxtFree(Colors.white.withOpacity(0.8),
                    16.0,'reg'),
              ),
            ],
          ),
        ),
      ),
    );
  }



}