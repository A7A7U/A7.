import 'package:flutter/material.dart';
import 'package:doctor_app/HOME/constent.dart';
import 'package:doctor_app/HOME/models.dart';
import 'package:doctor_app/Detalis/body_detalis.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key ,key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(right: kDefaultPadding),
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black87,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      // title: Text(
      //   'back',
      //   style: GoogleFonts.allerta(
      //       textStyle: TextStyle(
      //           fontSize: 15,
      //           color:
      //           Colors.black87)),
      //
      // ),
    );
  }
}
