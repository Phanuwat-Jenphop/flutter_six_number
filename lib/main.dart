import 'package:flutter/material.dart';
import 'package:flutter_six_number/screen_page.dart';
// import 'package:flutter_six_number/backupfiles/origine.dart';
// import 'package:flutter_six_number/backupfiles/pin_page.dart';
 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PIN Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const TestPage(), // screen
      //home: const Test_page(),  // pin
      //hom: const testpage(),  // origin
    );
  }
}
