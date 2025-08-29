import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone_ui/screens/home.dart';
import 'package:whatsapp_clone_ui/widgets/uihelper.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Uihelper.customText(
                text: "Profile info",
                height: 18,
                fontFamily: "interbold",
                fontweight: FontWeight.bold,
                color: Color(0xFF00A884),
              ),
              SizedBox(height: 40),
              Uihelper.customText(
                text: "Please provide your name and an optional",
                height: 14,
                fontFamily: "regular",
              ),
              SizedBox(height: 8),
              Uihelper.customText(
                text: "profile photo",
                height: 14,
                fontFamily: "regular",
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Uihelper.customButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
