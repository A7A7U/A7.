import 'package:doctor_app/Auth/Controller.dart';
import 'package:flutter/material.dart';

class doctoer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double s = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
              Container(
                height: 120,
              ),
              Container(
                width: s,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/pp.webp"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                " Sign into your account",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                child: TextField(
                  //   controller: emailcontroller,

                  decoration: InputDecoration(
                    hintText: "Phone",
                    prefixIcon: Icon(
                      Icons.password_outlined,
                      color: Color(0xff90CAF9),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 2.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Authcontroller.instance.DoctorRes();
                },
                child: Container(
                  width: 140,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff90CAF9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ]))));
  }
}
