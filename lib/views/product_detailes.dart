
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/style.dart';
class ProductDetailes extends StatelessWidget {
   ProductDetailes({super.key, required this.title,required this.image, this.price});
    final String title;
    final String image;
    final String ?price;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                children: [
                  Image.asset("$image",fit: BoxFit.cover,width: double.infinity,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                        ),
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.2)),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.2)),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.2)),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.2)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
                  ),
                  SizedBox(height: 5,),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Style( text: "${title}", color: Colors.black,),
                          Row(
                            children: [
                          Heading(data: "${price}", color: Color.fromRGBO(51, 144, 124, 1)),
                              SizedBox(width: 10,),
                            Heading(data: "'50% off'", color: Colors.black)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
              Card(
          child: Padding(
          padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(51, 144, 124, 1),
                  shape: BoxShape.circle,
                ),
                child:  Center(
                    child: Heading(
                      data: 'T',
                      color:Colors.white,
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
               Heading(data: 'Tradly Store',color: Colors.black,),
              SizedBox(width: 180,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(51, 144, 124, 1)
                  ),
                  onPressed: (){},
                  child: Text("Follow",style: TextStyle(color: Colors.white),))
              ]
              )
            ],
          ),
          )
              ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Heading(
                        data:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.white,
                    child:Column(
                      children: [
                        ElevatedButton(onPressed: (){
                         // Get.to(PaymentOption());
                          /*
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Add_To_Card()),
                          );
            */
                        },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff33907C),
                              fixedSize: Size(300, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )

                          ),
                          child: Text("Add To Cart", style: TextStyle(fontSize: 20,color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
