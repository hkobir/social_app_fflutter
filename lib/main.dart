import 'package:flutter/material.dart';
import 'package:social_app_flutter/screen/login_Screen.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.blue,
      ),
      home: LoginApp(),
    );
  }
}
