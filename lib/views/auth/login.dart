
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:list_json/model/album_list.dart';
import 'package:list_json/views/auth/signup_screen.dart';
import 'package:http/http.dart' as http;
import '../../controller/aurth_controller.dart';
import '../../routes/routes_name.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _key = GlobalKey<FormState>();
  final bool _obscureText = true;

  @override
  void initState() {
    Future.delayed(Duration.zero,()async{
      await Get.find<AurthController>().fetchAlbumList();
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AurthController>(
      builder: (homeCon) {
        return Scaffold(
          backgroundColor: const Color.fromRGBO(51, 144, 124, 1),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: _key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    height: 200,
                    child: ListView.builder(
                        itemCount:homeCon.albumsList?.length ,
                        itemBuilder: (context,index){
                          AlbumsModel? model = homeCon.albumsList?[index];
                          return Text("${index}:- ${model?.title}") ;
                        }),
                  ),


                  /*Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text("${homeCon.albumsrespose?.title}",style: TextStyle(fontSize: 30,color: Colors.white),),
                      SizedBox(
                        height: 80,
                      ),
                     Text("Login to your acoount",style: TextStyle(fontSize: 20),)
                    ],
                  ),*/
                   SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: '  Email/Mobile Number',
                        hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(50),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Email";
                      } else if (!value.contains('@')) {
                        return "Invalid Email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: _obscureText,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        hintText: '  Password',
                        hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(50),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your password";
                      } else if (value.length < 8) {
                        return "password invalid";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(RouteNames.navBar_screen);
                        // if (_key.currentState!.validate()) {
                        //   Navigator.push(context, MaterialPageRoute(builder: (context) => ,));
                        // }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,),
                      child: Text("Login",style: TextStyle(color: Color.fromRGBO(51, 144, 124, 1)),)
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(onPressed: (){

                  }, child: const Text('Forgot your password?')),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SingUpScreen(),
                        ));
                  }, child: const Text('Don’t have an account? Sign up',))
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
