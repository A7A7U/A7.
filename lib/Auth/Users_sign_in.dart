import 'package:doctor_app/Auth/Controller.dart';
import 'package:doctor_app/Auth/Sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);


  @override
  State<Loginpage> createState() => _LoginpageState();//WWW
}

class _LoginpageState extends State<Loginpage> {
   //_LoginpageState({required this.emailcontroller,required this.passcontroller});
  var emailcontroller = TextEditingController();
  var passcontroller = TextEditingController();

  void get(var email){
    email =emailcontroller;
  }
  @override
  Widget build(BuildContext context) {

    double d = MediaQuery.of(context).size.height;
    return Expanded(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 300,
                    height: 300
                    ,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/6.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: d,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(" Hello ",style: TextStyle(

                          fontSize: 50.0,
                              color: Color(0xff90CAF9),
                          fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Sign into your account",
                              style: TextStyle(fontSize: 20, color: Colors.grey),
                            )
                          ])),
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
                    height: 20,
                  ),
                  Row(children: [
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "Forgot your password?   ",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    )
                  ]),
                  SizedBox(
                    height: 22,
                  ),
                  GestureDetector(
                    onTap: () {
                      Authcontroller.instance.singins(
                          emailcontroller.text.trim(), passcontroller.text.trim());
                    },
                    child: Container(
                      width: 140,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("images/color.png"),
                            fit: BoxFit.cover),
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
                  SizedBox(
                    height: 60,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Don\'t have account?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                          children: [
                            TextSpan(
                                text: " Create",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Get.to(() => sign_up()))
                            ]))
                ],
              ),
            ),
          )),
    );
  }
}
