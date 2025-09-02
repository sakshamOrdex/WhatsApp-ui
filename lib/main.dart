import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/screens/Home/homescreen.dart';
// import 'package:whatsapp_clone_ui/screens/splashscreen.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF00A884)),
        useMaterial3: false,
        fontFamily: "Regular",
      ),
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
