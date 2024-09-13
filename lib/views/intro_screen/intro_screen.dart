import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/apps_color.dart';
import '../../constants/style.dart';
import '../../home_controller/intro_controller.dart';
import '../../routes/routes_name.dart';



class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroController>(
        builder: (introCon) {
          return Scaffold(
            body: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: AppColors.backGroundColors,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Container(
                      margin: const EdgeInsets.only(top: 150),
                      height: 700,
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(introCon.onboardingData[introCon.currentIndex]['image']),
                                  const SizedBox(height: 30),
                                  Text(
                                    introCon.onboardingData[introCon.currentIndex]['description'],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.buttonTextColors),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ...List.generate
                                  (introCon.onboardingData.length, (index) {
                                  return GestureDetector(
                                    onTap: () {
                                      introCon.changeIndex(index);
                                      // setState(() {
                                      //   currentIndex = index;
                                      // });
                                    },
                                    child: AnimatedContainer(

                                      margin: const EdgeInsets.all(7),
                                      duration: const Duration(milliseconds: 300),
                                      height: 8,
                                      width: introCon.currentIndex == index ? 20 : 8,
                                      decoration: BoxDecoration(
                                        color: introCon.currentIndex == index
                                            ? AppColors.primaryColor
                                            : AppColors.primaryColor.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  );
                                }),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primaryColor,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 40),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50)),
                                  ),
                                  onPressed: () {
                                    if (introCon.currentIndex == introCon.onboardingData.length - 1) {
                                      Get.offAllNamed(RouteNames.login_screen);
                                    } else {
                                      introCon.pressOnNextButton();
                                      // setState(() {
                                      //   currentIndex =
                                      //       (currentIndex + 1) % onboardingData.length;
                                      // });
                                    }
                                  },
                                  child: HeadingTwo(data: introCon.onboardingData[introCon.currentIndex]['button'])),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
    );
  }
}