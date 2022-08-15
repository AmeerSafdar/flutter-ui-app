import 'package:design/models/usermodel.dart';
import 'package:flutter/material.dart';
class UserPost extends StatelessWidget {
  UserModel user;
   UserPost({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(user.img!),
        ),
        title: Text(
          user.name!,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height:4
                ),
              Text(
                user.text!,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w500
                ),
                ),
                SizedBox(
                  height:4
                ),
              Text(user.time!)
            ],
          ),

          trailing: Column(
            children: [
              Icon(Icons.thumb_up_outlined),
              SizedBox(height: 3,),
              Text('32')
            ],
          ),
      ),
    );
  }
}
