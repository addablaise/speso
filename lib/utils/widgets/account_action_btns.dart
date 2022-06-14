import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speso/utils/styles/stext.dart';

class wAccActionBtn extends StatelessWidget {
  final String icon,actionLabel;
  Color bgColor;
  wAccActionBtn({required this.onPressed,required this.icon,
    required this.actionLabel,required this.bgColor});
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   // height: 100,
        //   decoration: BoxDecoration (
        //     color: bgColor,
        //     borderRadius: BorderRadius.all(
        //         Radius.circular(100)),
        //   ),
        //   margin: EdgeInsets.fromLTRB(2, 5, 2, 5),
        //   child: CupertinoButton(
        //     padding: EdgeInsets.only(left: 6),
        //     onPressed: onPressed,
        //     child: Center(
        //       child: Image( image: AssetImage('assets/images/'+icon),
        //       ),
        //     ),
        //   ),
        // ),

        CircleAvatar(
          maxRadius: 30,
          backgroundColor: bgColor,
          child: CupertinoButton(
            padding: EdgeInsets.all(10),
            onPressed: onPressed,
            child: Center(
              child: Image(
                width: 30,
                height: 30,
                image: AssetImage(
                  'assets/images/'+icon,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4),
          child: Text(actionLabel,style: stxtFree(Colors.black54, 14.0, 'med'),),
        ),

      ],
    );
  }
}