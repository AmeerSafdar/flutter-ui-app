// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:design/models/usermodel.dart';
import 'package:design/widgets/bottom_navBar.dart';
import 'package:design/widgets/custom_appbar.dart';
import 'package:design/widgets/user_post.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
 TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length:4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: CustomeAppBar(),
        body: 
            Stack(
              children: [
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: users.length,
                  itemBuilder: (context,index){
                    print('index is $index');
                    return UserPost(
                      user:users[index] ,
                    );
                  }),
                  Positioned(
                    bottom: 5,
                    left:0,
                    right:0,
                    child: BottomNavBar()
                    )
              ],
            ),
          
        
      ),
    );
  }
}
