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
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Uihelper.customText(
                text: "Profile info",
                height: 18,
                fontFamily: "interbold",
                fontweight: FontWeight.bold,
                color: Color(0xFF00A884),
              ),
              SizedBox(height: 30),
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
              SizedBox(height: 20),
              CircleAvatar(
                radius: 90,
                backgroundColor: Color(0xFFD9D9D9),
                child: Image.asset(
                  'assets/image/photo-camera 1.png',
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type your name here",
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                    suffixIcon: Icon(Icons.face, color: Color(0xFF00A884)),
                  ),
                ),
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
