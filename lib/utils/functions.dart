import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

walletActionColor(index){
  switch(index) {
    case 0: return Color(0xFF4596F6);
    case 1: return Color(0xFFE97F6E);
    case 2: return Color(0xFF6ABBC5);
    case 3: return Color(0xFF8758BC);
    default: return Colors.black;
  }
}
walletActionLabels(index){
  switch(index) {
    case 0: return 'Top up';
    case 1: return 'Withdraw';
    case 2: return 'Receive';
    case 3: return 'Transactions';
    default: return 'None';
  }
}

walletActionIcons(index){
  switch(index) {
    case 0: return 'walletadd.png';
    case 1: return 'cardsend.png';
    case 2: return 'walletadd.png';
    case 3: return 'clock.png';
    default: return 'None';
  }
}

qServiceActionLabels(index){
  switch(index) {
    case 0: return 'Airtime';
    case 1: return 'Pay Bill';
    case 2: return 'Split Pay';
    default: return 'None';
  }
}

qserviceActionIcons(index){
  switch(index) {
    case 0: return 'airtime.png';
    case 1: return 'paybill.png';
    case 2: return 'splitpay.png';
    default: return 'None';
  }
}