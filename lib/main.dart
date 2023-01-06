import 'package:doctor_app/Auth/Controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:doctor_app/HOME/page_choce.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) =>Get.put(Authcontroller()));
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
   // void initState(){
   //   SpinKitWave(
   //     color: Colors.blueAccent,a
   //     size: 100.0,
   //   );
   //
   //  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:check()
    );
  }}