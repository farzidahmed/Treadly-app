
import 'package:get/get.dart';

class IntroController extends GetxController{


  int currentIndex = 0;
  final List<Map<String, dynamic>> onboardingData = [
    {
      'image': 'assets/images/img_1.png',
      'description': 'Empowering Artisans, Farmers & Micro Business',
      'button': 'Next'
    },
    {
      'image': 'assets/images/img_2.png',
      'description': 'Connecting NGOs, Social Enterprises with Communities',
      'button': 'Next'
    },
    {
      'image': 'assets/images/img_3.png',
      'description': ' Donate, Invest & Support infrastructure projects',
      'button': 'Finish'
    },
  ];

  void changeIndex(int index){
    currentIndex = index;
    update();
  }

  void pressOnNextButton(){
    currentIndex =
        (currentIndex + 1) % onboardingData.length;
    update();
  }

}