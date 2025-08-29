import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone_ui/screens/login.dart';
import 'package:whatsapp_clone_ui/widgets/uihelper.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/image 1.png"),
            SizedBox(height: 20),
            Uihelper.customText(
              text: "Welcome to WhatsApp",
              height: 20,
              fontFamily: "inter",
              color: Color(0xFF000000),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(
                  text: "Read out",
                  height: 14,
                  fontFamily: "regular",
                ),
                SizedBox(width: 5),
                Uihelper.customText(
                  text: "Privacy Policy.",
                  height: 14,
                  color: Colors.blueAccent,
                  fontFamily: "regular",
                ),
                SizedBox(width: 5),
                Uihelper.customText(
                  text: "Tap “Agree and continue”",
                  height: 14,
                  fontFamily: "regular",
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(
                  text: "to accept the",
                  height: 14,
                  fontFamily: "regular",
                ),
                SizedBox(width: 5),
                Uihelper.customText(
                  text: "Teams of Service.",
                  height: 14,
                  color: Colors.blueAccent,
                  fontFamily: "regular",
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.customButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        },
        buttonname: "Agree and continue",
        fontFamily: "interbold",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
