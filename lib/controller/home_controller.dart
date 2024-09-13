
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
//================= product item=======
  List items =[
    {
      'image':"assets/categories/beverages/img.png",
      'title':"Stawbery punch",
      'price':'25'
    },
    {
      'image':"assets/categories/beverages/img_1.png",
      'title':"apple",
      'price':'35'
    },
    {
      'image':"assets/categories/beverages/img_2.png",
      'title':"orange",
      'price':'40'
    },
    {
      'image':"assets/categories/beverages/img.png",
      'title':"orange",
      'price':'25'
    },
  ];

  //======================grid view=========
List grid =[
  {
    'img':"assets/grid/img.png",
  },
  {
    'img':"assets/grid/img_1.png",
  },
  {
    'img':"assets/grid/img_2.png",
  },
  {
    'img':"assets/grid/img_3.png",
  },
  {
    'img':"assets/grid/img_4.png",
  },
  {
    'img':"assets/grid/img_5.png",
  },
  {
    'img':"assets/grid/img_6.png",
  },
  {
    'img':"assets/grid/img_7.png",
  },

];

  //==================popular item==========
  List popular =[
    {
      'image':"assets/popular/img.png",
      'title':"Hilsha",
      'price':'25'
    },
    {
      'image':"assets/popular/img_1.png",
      'title':"Shampu",
      'price':'25'
    },
    {
      'image':"assets/popular/img_4.png",
      'title':"Vegitables",
      'price':'25'
    },
  ];

//================myfavitem=========

List favItem=[];

void addFavorite( dynamic value){
  favItem.add(value);
    update();
  Get.snackbar(
    "Tiredly",
    "Successfully added to favorite",
    icon: Icon(Icons.person, color: Colors.white),
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.green,
  );
}
void removeFav(index){
  favItem.removeAt(index);
  update();
}
  bool isFavorite(Map<String, dynamic> product) {
    return favItem.contains(product);
  }
}