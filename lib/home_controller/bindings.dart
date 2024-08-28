import 'package:get/get.dart';
import 'package:list_json/home_controller/home_controller.dart';

class bindings extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }

}