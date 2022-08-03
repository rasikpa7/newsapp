 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_rest_api/models/news_response_model.dart';
import 'package:news_app_rest_api/services/apiEndpoint/news_services.dart';
import 'package:news_app_rest_api/view/homeScreen/homeScreen.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
      home: HomeScreen(),
    );
    
  }
}