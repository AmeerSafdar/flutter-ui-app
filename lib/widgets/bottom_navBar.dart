import 'package:flutter/material.dart';
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
     child:Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                const Icon(
                  Icons.ios_share_rounded,
                  size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                           boxShadow: [
                               BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 10,
                                blurRadius:15,
                                offset: const Offset(0, 7), // changes position of shadow
                                ),
                                ],
                      ),
                      child: const TextField(
                         decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left:5,top: 14),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right:12.0),
                            child: Icon(
                              Icons.send_rounded,
                              color: Colors.black,
                              ),
                          )
                          ),
                      )),
                  ),
                   const SizedBox(
                    width: 20,
                  ),
                  
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(
                      Icons.keyboard_voice,
                      size: 28,
                      color: Colors.black,
                      ))
              ],
            ),
          )
    );
  }
}
