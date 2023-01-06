import 'package:flutter/material.dart';
import 'package:doctor_app/HOME/constent.dart';
import 'package:doctor_app/HOME/models.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:doctor_app/HOME/page_home.dart';

class DetailsBody extends StatefulWidget {
  final Product product;


  const DetailsBody({Key, key, required this.product}) : super(key: key);

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override

  DateTime data = DateTime.now();
  bool checedin = false;
  var TextFieldvalue;
  // bool check = checedin;
  // void checed( var getdata,var getdatetext) {
  //   if (getdataz == null && TextFieldvalue == null) {
  //     checedin == false;
  //   } else {
  //     checedin == true;
  //   }
  //   ;
  // }

  void initState() {
    setState(() {
      //  checed();
      print(checedin);
      super.initState();
    });
  }

  Widget build(BuildContext context) {
    double s = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    final now = DateTime.now();
    final tomorrow = DateTime(now.year, now.month, now.day + 1);

    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: s * 0.9,
          margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            //vertical: kDefaultPadding / 2,
          ),
          height: 200.0,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              //   margin: EdgeInsetsDirectional.only(top: 77),
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  // bottomRight: Radius.circular(18),
                  // bottomLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                ),
                color: Colors.grey.shade300,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 35,
                      color: Colors.black12),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              left: 75.0,
              child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage(widget.product.image)),
            ),
          ]),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(18),
              bottomLeft: Radius.circular(18),
              //   topRight: Radius.circular(18),
              // topLeft: Radius.circular(18),
            ),
            color: Colors.grey.shade300,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 15), blurRadius: 12, color: Colors.black12),
            ],
          ),
          margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            //vertical: kDefaultPadding / 2,
          ),
          height: y * 0.6,
          width: s * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment:MainAxisAlignment.end,
            children: [
              Container(
                padding:
                    EdgeInsetsDirectional.only(start: 12, end: 15, bottom: 33),
                margin: EdgeInsetsDirectional.only(end: 6, top: 19),
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
                  children: [
                    SizedBox(height: 29),
                    Text(
                      ' Doctor:${widget.product.firstName}',
                      style: GoogleFonts.allerta(
                          textStyle:
                              TextStyle(fontSize: 15, color: Colors.black87)),
                    ),
                    Text(
                      widget.product.email,

                      style: GoogleFonts.almarai(
                          textStyle:
                              TextStyle(fontSize: 15, color: Colors.black87)),
                    ),
                    Text(
                      '${widget.product.phone}',
                      style: GoogleFonts.amethysta(
                          textStyle:
                              TextStyle(fontSize: 15, color: Colors.black87)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 290,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(start: 15, end: 15),
                // margin: EdgeInsetsDirectional.only(end: 160),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 19),
                    Text(
                      'Discrption :-',
                      style: GoogleFonts.allerta(
                          textStyle:
                              TextStyle(fontSize: 15, color: Colors.black87)),
                    ),
                    Text(
                      "i am creating very easy app - user will get 4 texfields and he will put",
                      style: GoogleFonts.almarai(
                          textStyle:
                              TextStyle(fontSize: 15, color: Colors.black87)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
                width: 290,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(start: 15, end: 15),
                // margin: EdgeInsetsDirectional.only(end: 160),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reservation :-',
                      style: GoogleFonts.allerta(
                          textStyle:
                              TextStyle(fontSize: 15, color: Colors.black87)),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    TextField(
                      onChanged: (newVal) {
                        TextFieldvalue = newVal;
                      },
                      //controller: TextFieldvalue,
                      // controller: emailcontroller,
                      decoration: InputDecoration(
                        hintText: " Your Name",
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color(0xff90CAF2),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(color: Colors.blueGrey, width: 1.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(color: Colors.black54, width: 1.0)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsetsDirectional.only(start: 8),
                              margin: EdgeInsetsDirectional.only(start: 250),
                              width: s * 0.13,
                              height: y * 0.05,
                              decoration: BoxDecoration(
                                color: Color(0xff90CAF2),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(18),
                                  bottomLeft: Radius.circular(18),
                                  //   topLeft:   Radius.circular(18),
                                  //topRight :   Radius.circular(18)
                                ),
                              ),
                              //     color: Colors.amberAccent,
                              child: IconButton(
                                  padding:
                                      EdgeInsets.only(right: kDefaultPadding),
                                  icon: Icon(
                                    Icons.date_range,
                                    size: 36,
                                    color: Colors.white,
                                  ),
                                  onPressed: () async {
                                    DateTime? newDate = await showDatePicker(
                                        context: context,
                                        initialDate: tomorrow,
                                        firstDate: data,
                                        lastDate: DateTime(2024));
                                    if (newDate == null) return;
                                    data = newDate;
                                    print(data);

                                    checedin = true;
                                    setState(() {
                                      //   checedin = true;
                                      print(checedin);
                                      print(TextFieldvalue);
                                    });

                                    print(checedin);
                                  }),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(38),
                              bottomLeft: Radius.circular(38),
                                 topLeft:   Radius.circular(38),
                              topRight :   Radius.circular(38)
                            ),
                          ),
                          width: s * 0.5,
                          height: y * 0.07,

                          child: checedin == false
                              ? AnimatedButton(
                                  color: Color(0xff90CAF2),
                                  text: 'Reservation',
                                  pressEvent: () {
                                    AwesomeDialog(
                                      context: context,
                                      dialogType: DialogType.error,
                                      headerAnimationLoop: false,
                                      animType: AnimType.bottomSlide,
                                      title: 'Error',
                                      desc: 'Check your date or name...',
                                      buttonsTextStyle:
                                          const TextStyle(color: Colors.black),
                                      showCloseIcon: true,
                                      //  btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        print(checedin);
                                        // print(check);
                                      },
                                    ).show();
                                  },
                                )
                              : AnimatedButton(
                                  color: Color(0xff90CAF2),
                                  text: 'Reservation',
                                  pressEvent: () {
                                    AwesomeDialog(
                                      context: context,
                                      dialogType: DialogType.success,
                                      headerAnimationLoop: false,
                                      animType: AnimType.bottomSlide,
                                      title: 'success',
                                      desc: ' Your Reservation is success',
                                      buttonsTextStyle:
                                          const TextStyle(color: Colors.black),
                                      showCloseIcon: true,
                                      //  btnCancelOnPress: () {},
                                      btnOkOnPress: () {},
                                    ).show();
                                  },
                                ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
