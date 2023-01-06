import 'package:doctor_app/HOME/page_home.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/HOME/models.dart';
import 'package:doctor_app/HOME/constent.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctortCard extends StatelessWidget {
  const DoctortCard({
    Key,
    key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //double s = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    homeState Home=homeState();
    Home.fuondusers.addAll([product.firstName,product.email]);
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 100,
      ),
      height: 190.0,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
             key: ValueKey(product.firstName.toString()),
            height: 155.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(20, 20),
                    blurRadius: 25,
                    color: Colors.black12),
              ],
            ),
          ),
          Positioned(
            top: 8.0,
            left: 6.0,
            child: Container(
              padding: EdgeInsetsDirectional.only(start: 16, top: 44),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  // bottomRight: Radius.circular(18),
                  // bottomLeft: Radius.circular(18),
                  topRight: Radius.circular(98),
                  topLeft: Radius.circular(98),
                ),
              ),
              child: CircleAvatar(
                  radius: 60, backgroundImage: AssetImage(product.image)),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: SizedBox(
              height: 156.0,
              // Because oure image is 200 width, then: width - 200
              width: size.width - 200,
              child: Container(
                height: y,
                decoration: BoxDecoration(
                  color: Colors.teal.shade100,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                    topLeft: Radius.circular(18),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                     ' Doctor:${Home.fuondusers.first}',

                      //' Doctor:${product.firstName}',
                      style: GoogleFonts.alumniSans(
                          textStyle:
                              TextStyle(fontSize: 18, color: Colors.black87)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.email,
                        style: GoogleFonts.almarai(
                            textStyle:
                                TextStyle(fontSize: 14, color: Colors.black87)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        //  horizontal: kDefaultPadding * 4, // 30 px padding
                        vertical: kDefaultPadding / 3, // 5 px padding
                      ),
                      decoration: BoxDecoration(
                          //   color: kSecondaryColor,
                          //  borderRadius: BorderRadius.circular(22),
                          ),
                      child: Text(
                        '${product.phone}',
                        style: GoogleFonts.amethysta(
                            textStyle:
                                TextStyle(fontSize: 14, color: Colors.black87)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        child: Text(
                          "Review".toUpperCase(),
                          style: GoogleFonts.almarai(
                              textStyle: TextStyle(
                                  fontSize: 15, color: Colors.black87)),
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(15)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.deepOrangeAccent),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color: Colors.orangeAccent)))),
                        onPressed: () => press()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
