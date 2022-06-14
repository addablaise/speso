import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speso/utils/styles/stext.dart';

class wQuickServiceBtn extends StatelessWidget {
  final String serviceIcon,serviceLabel;
  wQuickServiceBtn({required this.onPressed,required this.serviceIcon,
    required this.serviceLabel});
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration (
        color: Colors.white,
        borderRadius: BorderRadius.all(
            Radius.circular(12)),
      ),
      margin: EdgeInsets.fromLTRB(2, 5, 2, 5),
      child: CupertinoButton(
          padding: EdgeInsets.only(left: 6),
          onPressed: onPressed,
          child: Padding(
            padding: EdgeInsets.all(2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(
                    width: 30,
                    height: 30,
                    image: AssetImage(
                      'assets/images/'+serviceIcon,
                    ),
                  ),
                ),
                Text(
                  serviceLabel,
                  style: stxtFree(Colors.black54, 16.0, 'med'),),
              ],
            ),
          ),
      ),


    );
  }
}