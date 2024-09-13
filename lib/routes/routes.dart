import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_json/routes/routes_name.dart';

import '../global_widget/bottom_nav.dart';
import '../views/auth/login.dart';
import '../views/auth/signup_screen.dart';
import '../views/cart_screen/cart_screen.dart';
import '../views/favorite/favorite_screen.dart';
import '../views/home_screen/home_screen.dart';
import '../views/home_screen/order_history.dart';
import '../views/intro_screen/intro_screen.dart';
import '../views/profile/Profile.dart';
import '../views/splash/splash_screen.dart';


class Routes{
  static Route<dynamic>generateRoute( RouteSettings setting){
    switch(setting.name){
      case RouteNames.splash_screen:
        return MaterialPageRoute(builder: (BuildContext context)=> const SplashScreen());
      case RouteNames.login_screen:
        return MaterialPageRoute(builder: (BuildContext context)=> const LoginScreen());
      case RouteNames.signup_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const SingUpScreen());
      case RouteNames.intro_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const Onboarding());
      case RouteNames.cart_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const CartScreen());
      case RouteNames.favorite_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const FavoriteScreen());
      case RouteNames.navBar_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=>  BottomNav());
      case RouteNames.home_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const HomeScreen());
      case RouteNames.orderHistory_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const OrderHistory());
      case RouteNames.profile_screen:
        return MaterialPageRoute(builder:
            (BuildContext context)=> const Profile());
      default :
        return MaterialPageRoute(builder:
            (BuildContext context)=> const SplashScreen());
    }
  }
}
