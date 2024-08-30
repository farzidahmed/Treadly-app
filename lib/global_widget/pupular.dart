import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller/home_controller.dart';
import '../views/product_detailes.dart';
class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetBuilder<HomeController>(builder: (producttiles) {
      return Scaffold(
          body: SizedBox(
            height:Get.height *.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: producttiles.popular.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: CupertinoColors.inactiveGray.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ]),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15)),
                              child: Container(
                                // height: Get.height*.2,
                                width: Get.width*.4,
                                child: InkWell(
                                    onTap: (){
                                       Get.to(ProductDetailes(title:  producttiles.popular[index]["title"], image:producttiles.popular[index]["image"],));
                                    },
                                    child: Image.asset("${producttiles.popular[index]["image"]}",fit: BoxFit.cover,)),
                              ),
                            ),
                            Positioned(child: IconButton(onPressed: (){}
                                , icon: Icon(Icons.favorite,size: 30,color: Color.fromRGBO(51, 144, 124, 1),)),)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text("${producttiles.popular[index]["title"]}",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 22,
                                      width: 22,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(51, 144, 124, 1),
                                          shape: BoxShape.circle
                                      ),
                                      child: Center(child: Text("T",style: TextStyle(color: Colors.white),)),
                                    ),
                                    const SizedBox(width: 5,),
                                    Text("Tredly",style: TextStyle(fontSize: 18,color: CupertinoColors.inactiveGray),),
                                  ],
                                ),
                                Text("৳ ${producttiles.popular[index]["price"]}")
                              ],
                            )

                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ));
    });
  }
}
