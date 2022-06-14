import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:speso/utils/colors.dart';
import 'package:speso/utils/styles/stext.dart';

class wMessageReceivedCard extends StatelessWidget {
  final String msg,timestamp;
  wMessageReceivedCard({required this.msg,required this.timestamp});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
              ),
              child: Text(
                msg,
                style: stxtFree(Colors.black87, 15.0, 'reg'),
              ),
            ),
          ),
        ],
      )
    );
  }
}

class wMessageSentCard extends StatelessWidget {
  final String msg,timestamp;
  wMessageSentCard({required this.msg,required this.timestamp});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: MyColors.appPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
              ),
              child: Text(
                msg,
                style: stxtFree(Colors.white, 15.0, 'reg'),
              ),
            ),
          ),
        ],
      )
    );
  }
}


class wMoneySentCard extends StatelessWidget {
  final String amount,timestamp;
  wMoneySentCard({required this.amount,required this.timestamp});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Color(0xFF763D3C),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
              ),
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 2,
                    ),
                    child: SizedBox(
                      width: 500.0,
                      child: ListTile(
                        leading: CircleAvatar(
                          maxRadius: 18,
                          backgroundColor: Color(0xFF5B1D1D),
                          child: Icon(Iconsax.moneys),
                        ),
                        title: Text(
                          amount,
                          style: stxtFree(Colors.white, 18.0, 'med'),),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 2,
                    ),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),

                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 2,
                    ),
                    child: SizedBox(
                      width: 500.0,
                      child: Row(
                        children: [
                          Text(
                            'Speso Transfer',
                            style: stxtFree(Colors.white, 14.0, 'reg'),),
                          Expanded(child: Container()),
                          Text(
                            timestamp,
                            style: stxtFree(Colors.white, 14.0, 'reg'),),
                          Icon(Icons.check,color: Colors.grey,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}

class wMoneyAcceptedCard extends StatelessWidget {
  final String amount,timestamp;
  wMoneyAcceptedCard({required this.amount,required this.timestamp});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Color(0xFF301716),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
              ),
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 1.5,
                    ),
                    child: SizedBox(
                      width: 500.0,
                      child: ListTile(
                        leading: CircleAvatar(
                          maxRadius: 18,
                          backgroundColor: Color(0xFF5B1D1D),
                          child: Icon(Iconsax.moneys),
                        ),
                        title: Text(
                          amount,
                          style: stxtFree(Colors.white, 18.0, 'med'),),
                        subtitle: Text('Accepted',style: stxtFree(Colors.grey, 14.0, 'med'),),
                        trailing: Icon(Icons.verified,color: Colors.green,),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 1.5,
                    ),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),

                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 1.5,
                    ),
                    child: SizedBox(
                      width: 500.0,
                      child: Row(
                        children: [
                          Text(
                            'Speso Transfer',
                            style: stxtFree(Colors.white, 14.0, 'reg'),),
                          Expanded(child: Container()),
                          Text(
                            timestamp,
                            style: stxtFree(Colors.white, 14.0, 'reg'),),
                          Icon(Icons.check,color: Colors.grey,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}