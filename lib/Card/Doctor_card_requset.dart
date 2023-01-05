import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:doctor_app/HOME/models.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Doctor_Card_Requst extends StatelessWidget {
  const Doctor_Card_Requst({
    Key? key,
    required this.s,
    required this.y,
    required this.ResponeIT,
  }) : super(key: key);

  final double s;
  final double y;
  final Response ResponeIT;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 18,
        ),
        Container(
          width: s * 0.86,
          height: y * 0.17,
          child: Card(
              // key: ValueKey(
              // _fuondusers[index]["firstName"].toString()),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 6, top: 10),
                      child: Text(
                        'Reservation request from : ',
                        style: GoogleFonts.allerta(
                            textStyle:
                                TextStyle(fontSize: 13, color: Colors.black87)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal.shade100,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(6),
                          bottomLeft: Radius.circular(6),
                          topRight: Radius.circular(6),
                          topLeft: Radius.circular(6),
                        ),
                      ),
                      padding: EdgeInsets.only(right: s * 0.02, top: 3),
                      child: Text(
                        ' ${ResponeIT.name}',
                        style: GoogleFonts.allerta(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.black87)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 6),
                      child: Text(
                        'In the history of : ${ResponeIT.Date}',
                        style: GoogleFonts.allerta(
                            textStyle:
                                TextStyle(fontSize: 13, color: Colors.black87)),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: s * 0.3,
                          height: y * .05,
                          child: AnimatedButton(
                            color: Color(0xff90CAF2),
                            text: 'NOTAGREE',
                            pressEvent: () {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.error,
                                headerAnimationLoop: false,
                                animType: AnimType.bottomSlide,
                                title: 'Attention',
                                desc:
                                    'You have refused the reservation request',
                                buttonsTextStyle:
                                    const TextStyle(color: Colors.black),
                                showCloseIcon: true,
                                //  btnCancelOnPress: () {},
                                btnOkOnPress: () {
                                  //    print(checedin);
                                  // print(check);
                                },
                              ).show();
                            },
                          ),
                        ),
                        SizedBox(
                          width: s * 0.05,
                        ),
                        Container(
                          width: s * 0.3,
                          height: y * .05,
                          child: AnimatedButton(
                            color: Color(0xff90CAF2),
                            text: 'AGREE',
                            pressEvent: () {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.success,
                                headerAnimationLoop: false,
                                animType: AnimType.bottomSlide,
                                title: 'Attention',
                                desc:
                                    'I have accepted your reservation request',
                                buttonsTextStyle:
                                    const TextStyle(color: Colors.black),
                                showCloseIcon: true,
                                //  btnCancelOnPress: () {},
                                btnOkOnPress: () {
                                  //    print(checedin);
                                  // print(check);
                                },
                              ).show();
                            },
                          ),
                        )
                      ],
                    )
                  ])),
        )
      ],
    );
  }
}
