import 'dart:convert';
import 'package:doctor_app/Auth/Controller.dart';

import 'package:doctor_app/HOME/See_all.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:doctor_app/HOME/models.dart';
import 'package:doctor_app/Card/Doctor_card.dart';
import 'package:doctor_app/Detalis/Detalis.dart';



class home extends StatefulWidget {
  @override
  State<home> createState() => homeState();
}

class homeState extends State<home> {
  // final Product product;
 // static var fristname;
 // static var email;
  List<dynamic> fuondusers = [];
//Product pro=Product(firstName: fristname, email: email);
  //
  // List<Map<String, var>> locations = [
  //   {
  //   "fristname" : fristname,}
  // ]



  List<dynamic> resulte = [
    //fristname,

  ];

  var getvalue = "filter";
 // Product ali=Product(firstName: 'fristname');
  final products_pro = Product;
  List currenciesList = [
    'bones',
    'heart',
  ];

  // Future loadUserList() async {
  //   setState(() async {
  //     var res = await http.get(Uri.https("dummyjson.com", "users"));
  //     if (res.statusCode == 200) {
  //       var jsonData = jsonDecode(res.body);
  //       if (jsonData['users'].isNotEmpty) {
  //         setState(() {
  //           products = jsonData['users'];
  //
  //           // _loading = false;
  //         });
  //       }
  //     } else {
  //       var ali = res.statusCode;
  //       print(ali);
  //     }
  //   });
  // }

  @override
  void initState() {
    // fuondusers.addAll([product.firstName,product.email]);
    fuondusers = products;
  //  var re=products_pro as List;
    var pri = fuondusers;
    for (var age in fuondusers){
      print(age);
    }
    print(pri);
    resulte = products;

    super.initState();
  }

  void _runfilter(String enteredkey) {
    List<dynamic> resulte = [];
    if (enteredkey.isEmpty) {
      resulte = products_pro as List;
    } else {
      resulte = products
          .where((user) => user.firstName
              .toLowerCase()
              .contains(enteredkey.toLowerCase()))
          .toList(); //<- change
    }
    setState(() {
      fuondusers = resulte;
    });
  }



  List<DropdownMenuItem> getDrop() {
    List<DropdownMenuItem<String>> dropdownitem = [];
    for (int i = 0; i < currenciesList.length; i++) {
      String cur = currenciesList[i];
      var newitem = DropdownMenuItem(child: Text(cur), value: cur);
      // red = cur;
      dropdownitem.add(newitem);
    }
    return dropdownitem;
  }



  void runfilterSearch(String enteredkey) {
    List<dynamic> resulte = [];
    if (enteredkey.isEmpty) {
      resulte = products;
    } else {
      resulte = products
          .where((user) =>
          user.email.toLowerCase().contains(enteredkey.toLowerCase()))
          .toList(); //<- change
    }
    setState(() {
      fuondusers = resulte;
    });
  }

  late DateTime _selectedDate;
  void pickDateDialog() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            //which date will display when user open the picker
            firstDate: DateTime(1950),
            //what will be the previous supported year in picker
            lastDate: DateTime
                .now()) //what will be the up to supported date in picker
        .then((pickedDate) {
      //then usually do the future job
      if (pickedDate == null) {
        //if user tap cancel then this function will stop
        return;
      }
      setState(() {
        //for rebuilding the ui
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double s = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Container(
            child: Container(
              padding: EdgeInsetsDirectional.only(top: 20),
              child: Column(children: [
                Row(
                  children: [
                    IconButton(
                      iconSize: 30,
                      color: Colors.white,
                      onPressed: () {
                        Authcontroller.instance.request();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                      ),
                    ),
                    Text(
                      "Your Requst",
                      style: GoogleFonts.alike(
                          textStyle:
                              TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    IconButton(
                      iconSize: 30,
                      color: Colors.white,
                      onPressed: () {
                        Authcontroller.instance.backChoce();
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        // SnackBar(content: Text('Icon button is pressed',style: TextStyle(color: Colors.white,fontSize: 7),)));
                      },
                      icon: Icon(
                        Icons.output_sharp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  // margin: EdgeInsetsDirectional.only(start: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(36),
                        bottomLeft: Radius.circular(36),
                        topRight: Radius.circular(36),
                        topLeft: Radius.circular(36),
                      ),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.black26.withOpacity(0.2))
                      ]),
                  width: s * 0.9,
                  height: 50,
                  child: TextField(
                    onChanged: (value) => _runfilter(value),
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff039ad9),
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
              ]),

              width: s,
              height: y * 0.2,
              //   margin: EdgeInsetsDirectional.only(start: 16),
              decoration: BoxDecoration(
                  color: Color(0xff4db6ac),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(36),
                    bottomLeft: Radius.circular(36),
                    //  topRight: Radius.circular(36),
                    //topLeft: Radius.circular(36),
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.black26.withOpacity(0.2))
                  ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                  text: TextSpan(
                      text: "",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      children: [
                    TextSpan(
                        text: "See All",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(() => See_All()))
                  ])),
              SizedBox(
                width: 220,
              ),
              DropdownButton(
                dropdownColor: Colors.grey,
                // elevation: 7,
                // value: _red,
                hint: Text("$getvalue"),
                style: GoogleFonts.alike(
                    textStyle: TextStyle(fontSize: 15, color: Colors.black87)),
                items: getDrop(),
                onChanged: (value) {
                  setState(() {
                    getvalue = value;
                    print('$getvalue');
                    runfilterSearch(getvalue);
                  });
                },
                icon: Icon(Icons.filter_list),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
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
                height: 570,
                width: s,
                child: ListView.builder(
                  itemCount: fuondusers.length,
                  itemBuilder: (context, index) => DoctortCard(
                    itemIndex: index,
                    product:fuondusers[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: fuondusers[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ))
            ],
          ),
        ]),
      ),
    );
  }
}
