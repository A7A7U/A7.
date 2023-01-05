import 'package:doctor_app/Auth/Controller.dart';
import 'package:flutter/material.dart';
class check extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body:  SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 300,
                      height: 400,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Color(0xff90CAF9),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      //bottomLeft: Radius.circular(100),
                      bottomRight:  Radius.circular(120),
                    ),
                      image: DecorationImage(
                        image: AssetImage("images/5.png"),
                    )
                    )),
                  SizedBox(
                    height: 90,

                  ),
                    GestureDetector(
                      onTap: () {
                         Authcontroller.instance.user();
                      },
                      child: Container(

                        width: 210,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0xff90CAF9),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(30),

                        ),
                        child: Center(
                          child: Text(
                            "Users",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(

                      onTap: () {
                        Authcontroller.instance..gotouserpage();
                      },
                      child: Container(
                        width: 210,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0xff90CAF9),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(30),

                        ),

                        child: Center(
                          child: Text(
                            "Doctor",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),



                  ],

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
