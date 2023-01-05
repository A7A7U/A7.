import 'package:doctor_app/Doctor/Doctor_response.dart';
import 'package:doctor_app/Auth/Users_sign_in.dart';
import 'package:doctor_app/Auth/_doctor_sign_in.dart';
import 'package:doctor_app/HOME/page_check_request.dart';
import 'package:doctor_app/HOME/page_choce.dart';
import 'package:doctor_app/HOME/page_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';



class Authcontroller extends GetxController {
  var getemail;
  var fechemail;

  static Authcontroller instance = Get.put(Authcontroller());

  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;
  void onReady() {
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    fechemail = auth.currentUser!.email;
    print(fechemail);
    ever(_user, _Initialscreen);
  }
  _Initialscreen(User? user) {
    if (user != null) {
      print("object");

      Get.offAll(() => home());
    } else if (user == null) {
      Get.offAll(() => Loginpage());
      // Get.offAll(()=> GetBuilder<models>( builder:(controller) => Scaffold(body:controller.currentScreen,bottomNavigationBar: Botomnavigetorbar(),)));
    }
  }

  void request(){
    Get.offAll(() => Check_req());
  }
  void gohome(){
    Get.offAll(() => home());
  }
  void DoctorRes(){
    Get.offAll(() => DoctorResponse());
  }
  void backChoce(){
    Get.offAll(() => check());
  }




  void gotouserpage() {
    try {
      Get.offAll(() => doctoer());
    } catch (e) {
      print(e);
    }
  }

  void back() {
    try {
      Get.offAll(() => check());
    } catch (e) {
      print(e);
    }
  }

  void user() {
    try {
      Get.offAll(() => Loginpage());
    } catch (e) {
      print(e);
    }
  }

  void register(var email, var password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.offAll(() => home());
      getemail = email;
    } catch (e) {
      print(e);
      Get.snackbar("error", "date is wrong",
          colorText: Color.fromARGB(232, 2311, 122, 433),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void singins(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
        Get.offAll(()=> home());
    } catch (e) {
      print(e);
      Get.snackbar("error", "date is worng",
          colorText: Color.fromARGB(232, 2311, 122, 433),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signouts() async {
    await auth.signOut();
  }
}
