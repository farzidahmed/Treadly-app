import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:list_json/home_controller/bindings.dart';
import 'package:list_json/views/home_screen.dart';
import 'global_widget/bottom_nav.dart';
import 'views/home_screen.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: BottomNav(),
      debugShowCheckedModeBanner: false,
      initialBinding: bindings(),
    );
  }
}
