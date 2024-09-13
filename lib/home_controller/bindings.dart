import 'package:get/get.dart';
import 'package:list_json/home_controller/aurth_controller.dart';
import 'package:list_json/home_controller/home_controller.dart';
import 'package:list_json/home_controller/intro_controller.dart';

class bindings extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put<IntroController>(IntroController());
    Get.put<AurthController>(AurthController());
  }

}