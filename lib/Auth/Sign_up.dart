import 'package:doctor_app/Auth/Controller.dart';
import 'package:doctor_app/HOME/constent.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class sign_up extends StatelessWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailcontroller = TextEditingController();
    var passcontroller = TextEditingController();
    /*   List Ali=[
      "g.pang",
      "f.png",

    ];*/
    //double s = MediaQuery.of(context).size.width;
    double d = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.only(right: kDefaultPadding),
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                      ),
                      onPressed: () {
                        Authcontroller.instance.user_sign();
                      },
                    ),
                    Text(
                      "Back",
                      style: GoogleFonts.alike(
                          textStyle:
                          TextStyle(fontSize: 15, color: Colors.black87)),
                    ),
                  ],
                ),
                height: 80,
              ),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/6.jpg"), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: " Email",
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xff90CAF9),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 2.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 1.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                child: TextField(
                  controller: passcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: " password",
                    prefixIcon: Icon(
                      Icons.password_outlined,
                      color: Color(0xff90CAF9),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 2.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 1.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                  onTap: () {
                     Authcontroller.instance.register(
                     emailcontroller.text.trim(), passcontroller.text.trim());
                  },
                  child: Container(
                    width: 76,
                    height: d * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage("images/color.png"),
                          fit: BoxFit.cover),
                    ),
                    child: Center(
                      child: Text(
                        "Sign uP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              SizedBox(
                height: 90,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
