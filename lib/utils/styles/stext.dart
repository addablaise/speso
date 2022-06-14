import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

txtPageTitle(title,color){
  return Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: stxtPageTitle(color)
  );
}

stxtPageTitle(txtColor){
  return TextStyle(
    color: txtColor,
    fontSize: 22.0,
    fontFamily: 'NFSans-Bold',
  );
}

stxtBodyTitle(txtColor){
  return TextStyle(
    color: txtColor,
    fontSize: 20.0,
    fontFamily: 'NFSans-Bold',
  );
}


stxtBody(txtColor){
  return TextStyle(
    color: txtColor,
    fontSize: 18.0,
    fontFamily: 'NFSans-Regular',
  );
}

stxtFree(txtColor,txtSize,weight){
  String? fam;
  if (weight == 'bold'){
    fam = 'NFSans-Bold';
  }else if (weight == 'med'){
    fam = 'NFSans-Medium';
  }else if (weight == 'reg'){
    fam = 'NFSans-Regular';
  }
  return TextStyle(
    color: txtColor,
    fontSize: txtSize,
    fontFamily: fam,
  );
}

stxtTitleBottomSheet(context,title){
  return Padding(
    padding: EdgeInsets.only(top: 20,bottom: 10,),
    child: Align(
      alignment: Alignment.center,
      child: Text(
        title,
        style: stxtPageTitle(Colors.black),
      ),
    ),
  );
}

