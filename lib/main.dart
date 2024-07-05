import 'package:api_pratice/screen/controller/home_provider.dart';
import 'package:api_pratice/screen/home_Screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NewsProvider(),
      builder:(context, child) =>  MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsScreen(),
    );
  }
}
