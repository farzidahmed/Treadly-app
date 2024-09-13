import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
class Categoris extends StatelessWidget {
  const Categoris({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (control){

      return GridView.builder(
        itemCount: 8,
          shrinkWrap: true,
          primary: false,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(control.grid[index]['img']),
                    )
                ),
              ),
            );
          }
      );

    });
  }
}
