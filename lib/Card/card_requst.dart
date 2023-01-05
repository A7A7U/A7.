
import 'package:doctor_app/HOME/models.dart';
import 'package:flutter/material.dart';

class Card_Requst extends StatelessWidget {
  const Card_Requst({
    Key? key,
    required this.s,
    required this.y,
    required this.requstIT,
  }) : super(key: key);

  final double s;
  final double y;
  final RequstIT requstIT;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 18,),
        Container(
          width: s * 0.8,
          height: y * 0.08,
          child: Card(
              // key: ValueKey(
              // _fuondusers[index]["firstName"].toString()),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(36),
                  bottomLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                  topLeft: Radius.circular(36),
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text(
                      ' Doctor:${requstIT.NameDoctor}',
                      style: TextStyle(color: Colors.black87),
                    ),
                    Text(
                      ' ${requstIT.reservations} on your request',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ])),
        )
      ],
    );
  }
}
