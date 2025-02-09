import 'package:flutter/material.dart';
import 'package:project_itc/page/login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sigmart",
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: LoginPage(),
    );
  }
}

