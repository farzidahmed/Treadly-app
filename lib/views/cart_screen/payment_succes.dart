import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/style.dart';
import '../../routes/routes_name.dart';


class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({super.key});

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(RouteNames.navBar_screen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const HeadingTwo(data: 'Payment Success'),
          leading: IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back_outlined,color: Colors.white,) ),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage('assets/images/img_5.png',),),
              SizedBox(height: 10,),
              HeadingFour(data: 'Thanks for Order',fontSize: 30,)
            ],
          ),
        )

    );
  }
}
