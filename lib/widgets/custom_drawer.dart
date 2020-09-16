import 'package:flutter/material.dart';
import 'package:social_app_flutter/data/data.dart';
import 'package:social_app_flutter/screen/home_screen.dart';
import 'package:social_app_flutter/screen/login_Screen.dart';
import 'package:social_app_flutter/screen/profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  _buildDrawerOption(Icon icon, String title, Function ontap) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontSize: 22),
      ),
      onTap: ontap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                height: 200,
                width: double.infinity,
                image: AssetImage(currentUser.backgroundImageUrl),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.blue),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 2,
                                color: Colors.black12)
                          ]),
                      height: 80,
                      width: 80,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(currentUser.profileImageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                left: MediaQuery.of(context).size.width * .3,
                child: Text(
                  currentUser.name,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          _buildDrawerOption(
            Icon(Icons.dashboard),
            'Home',
            () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomeScreen())),
          ),
          _buildDrawerOption(Icon(Icons.chat_bubble), 'Chat', () {}),
          _buildDrawerOption(Icon(Icons.location_on), 'Map', () {}),
          _buildDrawerOption(Icon(Icons.account_circle), 'Profile', () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => ProfileScreen(user: currentUser,))),),
          _buildDrawerOption(Icon(Icons.settings), 'Setting', () {}),
         Expanded(
           child: Align(
             alignment: FractionalOffset.bottomCenter,
             child:  _buildDrawerOption(Icon(Icons.directions_run), 'Logout', () => Navigator.push(
                 context, MaterialPageRoute(builder: (_) => LoginApp()))),
           ),
         )
        ],
      ),
    );
  }
}
