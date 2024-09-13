import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/apps_color.dart';
import '../../constants/style.dart';
import '../../global_widget/custom_nav.dart';
import 'payment_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadingTwo(
          data: 'My Cart',
          fontSize: 30,
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeadingThree(
                        data: 'Deliver to Tredly Team,75119',
                        color: Colors.black,
                      ),
                      HeadingThree(
                        data: 'Dhaka, bangladesh',
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ],
                  ),
                  CustomElevatedButton(
                    onPressed: () {},
                    buttonText: 'Change',
                    buttonColor: AppColors.primaryColor,
                    textColor: Colors.white,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ListView.builder(
                itemCount: 50,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image(
                                    image: AssetImage(
                                        "assets/categories/vegetables/img.png"),
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: 100,
                                  )),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingTwo(
                                  data: "Demo Name",
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                HeadingTwo(
                                  data: '৳ 340',
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                HeadingTwo(
                                  data: 'Qty : 1',
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ],
                            )
                          ],
                        ),
                        const Divider(),
                        Center(
                            child: HeadingThree(
                              data: 'Remove',
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14,
                            ))
                      ],
                    ),
                  );
                },
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeadingTwo(
                    data: 'Product Details',
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const HeadingThree(
                        data: 'Price(1 Item)',
                        color: Colors.black,
                      ),
                      HeadingThree(
                        data: '৳ 340',
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingThree(
                        data: 'Delivery Fee',
                        color: Colors.black,
                      ),
                      HeadingThree(
                        data: 'Info',
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const HeadingTwo(
                        data: 'Total Amount',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      HeadingTwo(
                        data: '৳ 340',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: CustomElevatedButton(
            onPressed: () {
              Get.to(PaymentScreen());
              // Get.snackbar('Success', 'Wait for payment',
              //     colorText: Colors.white,
              //     backgroundColor: AppColors.primaryColor);
            },
            buttonText: 'Continue to Payment',
            textColor: Colors.white,
            buttonColor: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
