import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youthpro/constant/colors.dart';
import 'package:youthpro/screens/controllers/app_controller.dart';

import '../../constant/routes/routes_app.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  Splash1 createState() => Splash1();
}

class Splash1 extends State<Splash> {
  startTime() async {
    var duration =  const Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  AppController appController = Get.find<AppController>();

  void navigationPage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isLogin = prefs.getBool('login');
    // if (isLogin == true) {
      Get.offNamed(Routes.health);
    // } else {
      // Get.offNamed(Routes.login);
    // }
  }

  @override
  initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 140, left: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/splashbg.png',
              scale: 2,
            ),
          ),
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 320.0),
                  child: Text(
                    'YOUTH',
                    style: GoogleFonts.outfit(color: black, fontSize: 46,letterSpacing: 6.5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 20),
                  child: Text(
                    'FULL HEALTH SCREENINGS AT YOUR FINGERTIPS',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.outfit(color: black, fontSize: 12,letterSpacing: 2.5,fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ],
            ),),
        ],
      ),
    );
  }
}
