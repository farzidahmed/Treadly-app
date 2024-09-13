import 'package:flutter/material.dart';
import 'package:list_json/views/profile/Profile.dart';
import 'package:list_json/views/cart_screen/cart_screen.dart';
import 'package:list_json/views/favorite/favorite_screen.dart';
import 'package:list_json/views/home_screen/home_screen.dart';
import 'package:list_json/views/home_screen/order_history.dart';
class BottomNav extends StatefulWidget {
   BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
List<Widget> tab=[
    HomeScreen(),
  FavoriteScreen(),
  CartScreen(),
  OrderHistory(),
  Profile(),

  ];

int index =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tab[index],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromRGBO(51, 144, 124, 1),
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          unselectedItemColor: Colors.black.withOpacity(0.6),
          showUnselectedLabels: true,
          // showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
        currentIndex:index,
        onTap: (value){
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.favorite),
              icon: Icon(Icons.favorite),
              label: "Favorite"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                  Icons.shopping_cart_outlined),
              icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.list_alt_outlined),
              icon: Icon(Icons.list_alt_outlined), label: "Order History"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.person),
              icon: Icon(Icons.person), label: "Profile"),
        ]),

    );
  }
}
