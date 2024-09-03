import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:list_json/global_widget/custom_nav.dart';
import 'package:list_json/global_widget/pupular.dart';
import 'package:list_json/style/style.dart';
import '../global_widget/bottom_nav.dart';
import '../global_widget/categoris.dart';
import '../global_widget/product.dart';
import '../home_controller/home_controller.dart';
import 'product_detailes.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
 return Scaffold(
     appBar: AppBar(
       backgroundColor:Color.fromRGBO(51, 144, 124, 1),
       title:  Style(
          text: 'Grorices',color: Colors.white,
       ),
       automaticallyImplyLeading: false,
       actions: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child: Row(
             children: [
               Icon(
                 Icons.favorite,
                 color: Colors.white,
               ),
               const SizedBox(
                 width: 5,
               ),
               Stack(
                 alignment: Alignment.topRight,
                 children: [
                   const Icon(
                     CupertinoIcons.cart_fill,
                     color: Colors.white,
                   ),
                   Container(
                     height: 10,
                     width: 10,
                     decoration: const BoxDecoration(
                       color: Colors.red,
                       shape: BoxShape.circle,
                     ),
                   ),
                 ],
               )
             ],
           ),
         ),
       ],
       bottom: PreferredSize(
         preferredSize: const Size.fromHeight(60),
         child: Padding(
           padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
           child: TextFormField(
             cursorColor: Colors.white,
             keyboardType: TextInputType.emailAddress,
             decoration: InputDecoration(
                 fillColor: Colors.white,
                 filled: true,
                 hintText: '  Search Product',
                 hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                 prefixIcon: Icon(
                   Icons.search,
                   color: Color.fromRGBO(51, 144, 124, 1),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: const BorderSide(color: Colors.white),
                   borderRadius: BorderRadius.circular(50),
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: const BorderSide(color: Colors.white),
                   borderRadius: BorderRadius.circular(50),
                 ),
                 errorBorder: OutlineInputBorder(
                   borderSide: const BorderSide(color: Colors.red),
                   borderRadius: BorderRadius.circular(50),
                 ),
                 focusedErrorBorder: OutlineInputBorder(
                   borderSide: const BorderSide(color: Colors.red),
                   borderRadius: BorderRadius.circular(50),
                 )),
           ),
         ),
       ),
     ),

  body: SingleChildScrollView(
    child: Column(
      children: [
        Container(
            child: Categoris()),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Style(text: "New product", color: Colors.black),
            CustomElevatedButton(onPressed: (){},
                buttonText: 'see all'),
          ],
        ),
        SizedBox(
          height: 300,
            width: double.infinity,
            child: Product()),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Style(text: "Popular product", color: Colors.black),
            CustomElevatedButton(onPressed: (){},
                buttonText: 'see all'),
          ],
        ),
        SizedBox(
            height: 300,
            width: double.infinity,
            child: Popular()),


      ],
    ),
  )

);

  }
}
