import 'dart:async';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes_name.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(RouteNames.intro_screen);
      // Navigator.pushAndRemoveUntil(
      //     context,
      //     MaterialPageRoute(builder: (context) => const Onboarding()),
      //         (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color.fromRGBO(51, 144, 124, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/img.png',height: 126,width: 126,),
              const SizedBox(
                height: 10,
              ),
              const Text("Treadly",
                style: TextStyle(fontSize: 30,color: Colors.white),

              )
            ],
          ),
        ));
  }
}