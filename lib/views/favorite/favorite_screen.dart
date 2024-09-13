import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:list_json/global_widget/pupular.dart';
import 'package:list_json/home_controller/home_controller.dart';
import 'package:list_json/views/home_screen/product_detailes.dart';

import '../../global_widget/bottom_nav.dart';
import '../home_screen/home_screen.dart';

import '../home_screen/home_screen.dart';
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (fav) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(51, 144, 124, 1),
            leading: IconButton(
              onPressed: () {
                Get.to(BottomNav());
              },
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            ),
            title: const Text(
              'Favorite',
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      CupertinoIcons.cart_fill,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(130),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
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
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.white), // Outline color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded edges
                          ),
                          foregroundColor: Colors.white, // Text and icon color
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        ),
                        icon: Icon(Icons.sort, size: 20),
                        label: Text("Sort by"),
                      ),
                        OutlinedButton.icon(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          ),
                          icon: Icon(Icons.location_on, size: 20),
                          label: Text("Location"),
                        ),
                        OutlinedButton.icon(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          ),
                          icon: Icon(Icons.category, size: 20),
                          label: Text("Category"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: GridView.builder(
            scrollDirection:Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
                childAspectRatio: 0.75
          ),
              itemCount: fav.favItem.length,
              itemBuilder:(context,index) {
                return GestureDetector(
                  onTap: (){},
                  child: Padding(
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
                                  width: Get.width*.5,
                                  child: InkWell(
                                      onTap: (){
                                        Get.to(ProductDetailes(title:  fav.popular[index]["title"], image:fav.popular[index]["image"],));
                                      },
                                      child: Image.asset("${fav.popular[index]["image"]}",fit: BoxFit.cover,)),
                                ),
                              ),
                              Positioned(child: IconButton(onPressed: (){
                                 //print("remove product");
                                fav.removeFav(index);
                              },
                                  icon: Icon(Icons.favorite,size: 30,color: Color.fromRGBO(51, 144, 124, 1),)),)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text("${fav.popular[index]["title"]}",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
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
                                  Text("৳ ${fav.popular[index]["price"]}")
                                ],
                              )

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
                  },
          )
        );
      }
    );
  }
}
