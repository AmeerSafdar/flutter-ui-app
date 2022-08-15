// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:design/constant/SizeConfig.dart';
import 'package:flutter/material.dart';
class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomeAppBar({
    Key? key,
  }) : super(key: key);
@override
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: Container(
        padding: EdgeInsets.only(top: SizeConfig.heightMultiplier!*2),
        color: Color(0xffFFFFFF),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Container(
                 child: Row(
                  children: [
                     IconButton(
                    iconSize: SizeConfig.heightMultiplier ! * 4,
                    onPressed: (){}, 
                    icon: const Icon(Icons.arrow_back_ios_new)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CircleAvatar(
                            
                            radius: SizeConfig.heightMultiplier ! * 2,
                            backgroundImage:const AssetImage('assets/images/flag.png') ,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 3,top: SizeConfig.heightMultiplier!*1.5),
                      child: Column(
                        children: [
                          Text(
                            'Golf buddies',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.heightMultiplier! *2,
                              fontWeight: FontWeight.bold 
                            ),
                            ),
                            const Text(
                              '@golfbuddies',
                              style: const TextStyle(
                                color: Colors.grey
                              ),
                              )
                        ],
                      ),
                    )
                  ],
                 ),
               ),
               Stack(
                 children: [
                   Container(
                     padding: EdgeInsets.only(right:12,top: 13 ),
                     child: const Icon(Icons.message_outlined,color: Colors.black,size: 28
                     ,),
                   ),
                      Align(
                      alignment: Alignment.topLeft,
                      child:Container(
                        height: SizeConfig.heightMultiplier!*2,
                        width: SizeConfig.heightMultiplier!*2,
                        decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                    ),
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.white),
                          ))
                          )
                     ),
                   
                 ],
               ),
              ],
            ),
          ],
        ),
      ), 
      preferredSize: Size.fromHeight(
        SizeConfig.heightMultiplier! *8
      )
      );
  }
}