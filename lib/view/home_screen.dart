import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/model/user_model.dart';
import 'package:pet/service/authservice.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/create_post_screen.dart';
import 'package:pet/view/tabs/home_tab.dart';
import 'package:pet/view/notification_screen.dart';
import 'package:pet/view/tabs/chat_tab.dart';
import 'package:pet/view/tabs/my_pets.dart';
import 'package:pet/view/tabs/user_profile.dart';
import 'package:pet/view/widgets/custom_text.dart';

List<dynamic> mpc = [];
UserModel? userData;
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  


  int bindex = 0;
  final List<Widget> appbartitle = [
    CustomText(text: "Petspaw", color: Colors.black),
    CustomText(text: "My Pets", color: Colors.black),
    CustomText(text: "Create Post", color: Colors.black),
    CustomText(text: "Messanger!", color: Colors.black),
    CustomText(text: "Profile", color: Colors.black),
  ];

  List<Widget> Tab = [
    HomePage(),
    MyPetsTab(),
    HomePage(),
    ChatTab(),
    UserProfileTab()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AuthService.getUserData();
    
  }

  

  @override
  Widget build(BuildContext context) {
    print("222222222222222222222222222222222222222222222222222222222");
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        title: appbartitle[bindex],
        backgroundColor: app_color,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        actions: [
          AppBarButton(),
          IconButton(
            onPressed: (){
              
            }, 
            icon: Icon(Icons.abc)
          )
        ],
      ),
      // drawer: const DrawerNav(),
      body: Tab[bindex],
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  bindex = 0 ;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                  // icon: Image.asset('images/018-bell.png', height: 25, width: 25),
                  Icon( Icons.home, size: bindex == 0 ? 28 : 25, color:  bindex == 0 ?Colors.pinkAccent : Colors.black),
                  CustomText( text: 'Home', fontSize: 10, fontweight: FontWeight.w500,)
                  ]
                ),
              ),
            ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      bindex = 1 ;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                      // icon: Image.asset('images/018-bell.png', height: 25, width: 25),
                      Icon( Icons.pets, size: bindex == 1 ? 28 : 25, color:  bindex == 1 ?Colors.pinkAccent : Colors.black),
                      CustomText( text: 'My Pet', fontSize: 10, fontweight: FontWeight.w500,)
                      ]
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreatePostScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                      // icon: Image.asset('images/018-bell.png', height: 25, width: 25),
                      Icon( Icons.add, size: bindex == 2 ? 28 : 25, color:  bindex == 2 ?Colors.pinkAccent : Colors.black),
                      CustomText( text: 'Add Post', fontSize: 10, fontweight: FontWeight.w500,)
                      ]
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      bindex = 3 ;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                      // icon: Image.asset('images/018-bell.png', height: 25, width: 25),
                      Icon( Icons.message, size: bindex == 3 ? 28 : 25, color:  bindex == 3 ?Colors.pinkAccent : Colors.black),
                      CustomText( text: 'Chat', fontSize: 10, fontweight: FontWeight.w500,)
                      ]
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      bindex = 4 ;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                      // icon: Image.asset('images/018-bell.png', height: 25, width: 25),
                      Icon( Icons.person, size: bindex == 4 ? 28 : 25, color:  bindex == 4 ?Colors.pinkAccent : Colors.black),
                      CustomText( text: 'Profile', fontSize: 10, fontweight: FontWeight.w500,)
                      ]
                    ),
                  ),
                ),
          ],
        )      
      ),
    );
  }

  Widget AppBarButton(){
    if(bindex == 0){
      return IconButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen()));
      }, icon: Icon(Icons.notifications));
      
    } else if (bindex == 1) {
      // return IconButton(onPressed: (){}, icon: Icon(Icons.search));
      return SizedBox();
    } else if (bindex == 2) {
      return IconButton(onPressed: (){}, icon: Icon(Icons.cancel));
    } else if (bindex == 3) {
      // return IconButton(onPressed: (){}, icon: Icon(Icons.search));
      return SizedBox();
    } else if (bindex == 4) {
      // return IconButton(onPressed: (){}, icon: Icon(Icons.search));
      return SizedBox();
    } else {
      return SizedBox();
    }
  }
}
