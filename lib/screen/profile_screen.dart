import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app_flutter/models/user_model.dart';
import 'package:social_app_flutter/widgets/custom_drawer.dart';
import 'package:social_app_flutter/widgets/profile_clipper.dart';
class ProfileScreen extends StatefulWidget {
  final User user;

  ProfileScreen({this.user});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey <ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: ProfileClipper(),
                  child: Image(
                    height: 300,
                    width: double.infinity,
                    image: AssetImage(widget.user.backgroundImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50,left: 20,
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.blue,
                    ),
                    onPressed: ()=>_scaffoldKey.currentState.openDrawer(),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child:  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 2),
                              blurRadius: 6,
                              color: Colors.black12)
                        ]),
                    height: 100,
                    width: 100,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage(widget.user.profileImageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                widget.user.name,
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 1.5),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Followers",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.grey),

                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      widget.user.followers.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),

                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Following",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.grey),

                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      widget.user.following.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),

                    ),
                  ],
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
