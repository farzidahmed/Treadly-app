import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';



class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  final _key = GlobalKey<FormState>();
  TextEditingController passwordController=TextEditingController();
  TextEditingController conformPasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(51, 144, 124, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(CupertinoIcons.arrow_left,color: Colors.white,)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome to Tredly',style: TextStyle(fontSize: 30),),
                  SizedBox(
                    height: 80,
                  ),
                  Text('Signup to your account',style: TextStyle(fontSize: 20),)
                ],
              ),
              const SizedBox(height: 25,),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: '  First Name',
                    hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    errorBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50),
                    )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your First Name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10,),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: '  Last Name',
                    hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    errorBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50),
                    )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your Last Name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: '  Email ID/Phone Number',
                    hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    errorBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50),
                    )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your Email ID/Phone Number";
                  } else if (!value.contains('@')) {
                    return "Invalid Email";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10,),

              TextFormField(
                controller: passwordController,

                keyboardType: TextInputType.number,
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
                    errorBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50),
                    )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your password";
                  } else if (value.length < 8) {
                    return "password invalid";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10,),

              TextFormField(
                controller: conformPasswordController,

                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: '  Re-enter Password',
                    hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    errorBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50),
                    )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Conform your password";
                  } else if (value.length < 8) {
                    return "password invalid";
                  } else if (value != passwordController.text) {
                    return "Passwords do not match";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20,),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,),
                  child: Text('Create',style: TextStyle(color: Color.fromRGBO(51, 144, 124, 1)),)
                ),
              ),
              const SizedBox(height: 20,),
              TextButton(onPressed: (){

              }, child: const Text('Have an account ? Sign in')),
            ],
          ),
        ),
      ),
    );
  }
}