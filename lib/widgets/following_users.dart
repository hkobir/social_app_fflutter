import 'package:flutter/material.dart';
import 'package:social_app_flutter/data/data.dart';
import 'package:social_app_flutter/models/user_model.dart';
class FollowingUsers extends StatefulWidget {
  @override
  _FollowingUserState createState() => _FollowingUserState();
}

class _FollowingUserState extends State<FollowingUsers> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Following",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                letterSpacing: 1.2),
          ),
        ),
        Container(
          height: 80.0,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              User user = users[index];
              return Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0,2),
                      blurRadius: 6.0
                  )],
                  border: Border.all(color: Theme.of(context).primaryColor,width: 2),
                ),
                margin: EdgeInsets.all(10),
                child: ClipOval(
                  child: Image(
                    image: AssetImage(user.profileImageUrl),
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),

              );
            },
          ),
        )
      ],

    );
  }
}
