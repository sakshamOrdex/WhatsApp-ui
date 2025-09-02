import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/screens/Home/homescreen.dart';
import 'package:whatsapp_clone_ui/widgets/uihelper.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _Profile();
}

class _Profile extends State<Profile> {
  final TextEditingController name = TextEditingController();
  File? pickedimage;

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
              GestureDetector(
                onTap: () {
                  _openBottom(context);
                },
                child: pickedimage == null
                    ? CircleAvatar(
                        radius: 90,
                        backgroundColor: Color(0xFFD9D9D9),
                        child: Image.asset(
                          'assets/image/photo-camera 1.png',
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      )
                    : CircleAvatar(
                        radius: 90,
                        backgroundImage: FileImage(pickedimage!),
                      ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                    hintText: "Type your name here",
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                    enabledBorder: UnderlineInputBorder(
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
            MaterialPageRoute(builder: (context) => Homescreen()),
          );
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera_alt, size: 60, color: Colors.grey),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image, size: 60, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedimage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(ex.toString())));
    }
  }
}
