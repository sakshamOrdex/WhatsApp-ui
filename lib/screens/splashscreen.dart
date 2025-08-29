import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/screens/onboarding.dart';
import 'package:whatsapp_clone_ui/widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  State<Splashscreen> createState() => _Splashscreen();
}

class _Splashscreen extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/whatsapp 1.png"),
            SizedBox(height: 20),
            Uihelper.customText(
              text: "WhatsApp",
              height: 18,
              fontweight: FontWeight.bold,
              color: Colors.black,
              fontFamily: "interbold",
            ),
          ],
        ),
      ),
    );
  }
}
