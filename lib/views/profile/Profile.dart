import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Color(0xff33907C),
        elevation: 0,
        title: Text("Groceries",style: TextStyle(color: Colors.white,fontSize: 25),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 330,
            width: double.infinity,
            color: Color(0xff33907C),

          ),
          Positioned(
            top: 10,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blue,
                      child: Text('T',style: TextStyle(fontSize: 80, color: Colors.white),)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tradly Team',style: TextStyle(fontSize: 20,color: Colors.white),),
                    Text('01571258430',style: TextStyle(fontSize: 15,color: Colors.white),),
                    Text('ankanbiswas942@gmail.com',style: TextStyle(fontSize: 15,color: Colors.white),),

                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              height: 300,
              width: 350,
              //color: Colors.white,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Edit Profile',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20,),
                    Text('Language & Currency',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20,),
                    Text('Refer a Friend',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20,),
                    Text('Terms & Conditions',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20,),
                    TextButton(onPressed: (){}, child: Text('Logout',style: TextStyle(fontSize: 20),)),

                  ],),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
