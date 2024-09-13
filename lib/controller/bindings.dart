import 'package:get/get.dart';
import 'aurth_controller.dart';
import 'home_controller.dart';
import 'intro_controller.dart';

class bindings extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put<IntroController>(IntroController());
    Get.put<AurthController>(AurthController());
  }

}