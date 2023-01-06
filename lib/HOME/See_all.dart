import 'package:doctor_app/Auth/Controller.dart';
import 'package:doctor_app/Card/Doctor_card.dart';
import 'package:doctor_app/Detalis/Detalis.dart';
import 'package:doctor_app/HOME/constent.dart';
import 'package:doctor_app/HOME/models.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/HOME/page_home.dart';
import 'package:google_fonts/google_fonts.dart';


class See_All extends StatelessWidget {
  const See_All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double s = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
     body: SafeArea(
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
                    Authcontroller.instance.gethome();
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

          ),
          Container(
            child:  Row(
              children: [

                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.only(
                            //  bottomRight: Radius.circular(36),
                            // bottomLeft: Radius.circular(36),
                            topRight: Radius.circular(36),
                            topLeft: Radius.circular(36),
                          ),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset: Offset(1, 1),
                                color: Colors.black26.withOpacity(0.1))
                          ]),
                      height: y*0.9,
                      width: s,
                      child: ListView.builder(

                        itemCount:products.length,
                        itemBuilder: (context, index) => DoctortCard(
                          itemIndex: index,
                          product: products[index],
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  product: products[index],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
