import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speso/utils/styles/stext.dart';

class wWalletCard extends StatelessWidget {
  final String walletName,walletBalance,walletBg;
  final int index;
  wWalletCard({required this.onPressed,required this.walletName,
    required this.walletBalance,required this.walletBg,required this.index});
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    int walIndex = index+1;
    return Container(
      height: 180,
      decoration: BoxDecoration (
          image: DecorationImage(
              image: AssetImage('assets/images/'+walletBg),
              fit:BoxFit.cover
          ),
          borderRadius: BorderRadius.all(
              Radius.circular(12)),
        ),
      margin: EdgeInsets.fromLTRB(2, 5, 2, 5),
      child: CupertinoButton(
          padding: EdgeInsets.only(left: 6),
          onPressed: onPressed,
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
                      walletName+' $walIndex',
                      style: stxtFree(Colors.white, 16.0, 'reg'),),
                    Text(
                      'Balance',
                      style: stxtFree(Colors.white, 18.0, 'med'),),
                    Text(
                      walletBalance,
                      style: stxtFree(Colors.white, 30.0, 'bold'),),
                    Spacer(),
                  ],
                ),
              ),

              Spacer(),
            ],
          )
      ),
    );
  }
}